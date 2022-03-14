import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/services/networking.dart';
import 'package:rc_app/services/youtube_data.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:rc_app/utils/keys.dart';
import 'package:url_launcher/url_launcher.dart';

const String youtubeId = 'UCq1SGYOxepwOHBE8eQcE_Pg';
const String playlistId = 'PLL92E0C0I-ouYqxAnduT-m1xwfGXPh0lr';
String nextToken = '';
const String url =
    'https://www.googleapis.com/youtube/v3/search?key=$apiKey&channelId=$youtubeId&part=snippet,id&order=date&maxResults=10';
const String projectPlayListUrl =
    'https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=$playlistId&maxResults=10&key=$apiKey';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  Future<void> _launchURL(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    getVideo();
    print("getVideo() called");
  }

  List<List<String>> data = [];
  bool loading = false;

  void getVideo() async {
    if (mounted) {
      setState(() {
        loading = true;
      });
    }
    NetworkHelper networkHelper = NetworkHelper(url: projectPlayListUrl);
    var videoData = await networkHelper.getData();
    if (mounted) {
      setState(() {
        loading = false;
      });
    }
    for (int i = 0; i == videoData['items'][i]['snippet']['position']; i++) {
      //condition checks how many elements are there in one page
      String thumbnailUrl =
          videoData['items'][i]['snippet']['thumbnails']['high']['url'];
      String title = videoData['items'][i]['snippet']['title'];
      String desc = videoData['items'][i]['snippet']['description'].toString();
      String nextPageToken = videoData['nextPageToken'].toString();
      String videoTitle =
          videoData['items'][i]['snippet']['resourceId']['videoId'].toString();
      List<String> singleElement = [];
      singleElement.add(thumbnailUrl);
      singleElement.add(title);
      singleElement.add(desc);
      singleElement.add(videoTitle);
      singleElement.add(nextPageToken);
      data.add(singleElement);
    }
    print(data);
  }

  // void loadMore(String nextPageToken) async {
  //   if (nextPageToken != null) {
  //     String nextPageUrl =
  //         'https://www.googleapis.com/youtube/v3/search?pageToken=$nextPageToken&key=$apiKey&channelId=$youtubeId&part=snippet,id&order=date&maxResults=10';
  //     NetworkHelper networkHelper = NetworkHelper(url: url);
  //     var videoData = await networkHelper.getData();
  //     if (mounted) {
  //       setState(() {
  //         loading = false;
  //       });
  //     }
  //     for (int i = 0; i < 10; i++) {
  //       String thumbnailUrl =
  //           videoData['items'][i]['snippet']['thumbnails']['high']['url'];
  //       String title = videoData['items'][i]['snippet']['title'];
  //       String time = videoData['items'][i]['snippet']['publishTime'];
  //       String nextPageToken = videoData['nextPageToken'];
  //       String videoTitle = videoData['items'][i]['id']['videoId'];
  //       List<String> singleElement = [];
  //       singleElement.add(thumbnailUrl);
  //       singleElement.add(title);
  //       singleElement.add(time);
  //       singleElement.add(videoTitle);
  //       singleElement.add(nextPageToken);
  //       data.add(singleElement);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
        ),
        title: Text('Projects'),
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       fit: BoxFit.cover,
      //       image: AssetImage(backGroundImage),
      //     ),
      //   ),
      // ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (context, index) {
                print(index);
                print(data[index][0]);
                print(data[index][1]);
                print(data[index][2]);
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: individualData(context, index),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ),
    );
  }

  Widget individualData(BuildContext context, int index) {
    return OurCards(
      ontap: () {
        String videoId = data[index][3];
        _launchURL('https://www.youtube.com/watch?v=$videoId');
      },
      colour: Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(data[index][0]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Center(
              child: Text(
                data[index][1],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            data[index][2],
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
