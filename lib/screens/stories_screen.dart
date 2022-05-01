import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/services/firestore_services.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:rc_app/utils/home_scr_carousel.dart';
import 'package:url_launcher/url_launcher.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  // List<String> fest = [
  //   'https://www.a1wineandspirit.com/media/yhwie5wr/liquor-large.jpg',
  //   'https://images.unsplash.com/photo-1526894198609-10b3cdf45c52',
  //   'https://cdn.shopify.com/s/files/1/0284/1372/2703/files/Teremana-social-share_grande.jpg',
  //   'https://i.pinimg.com/originals/7f/da/d6/7fdad60a903375223b8b07b0ed697a07.jpg',
  //   'https://i2-prod.buzz.ie/incoming/article24278921.ece/ALTERNATES/s1200c/0_peaky-blinders-season-5.jpg',
  // ];

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

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  List<Widget> fest = [];
  List<Widget> facts = [];
  List<Widget> stories = [];
  bool loadFest = false;
  bool loadFacts = false;
  bool loadStories = false;

  Future<void> makeFestCarousel() async {
    setState(() {
      loadFest = true;
    });
    FirebaseStoreStoriesFest fs = FirebaseStoreStoriesFest();
    List<String> img = await fs.listFest();

    for (String a in img) {
      fest.add(
        GestureDetector(
          child: Image(
            image: NetworkImage(a),
          ),
        ),
      );
    }
  }

  Future<void> makeFactsCarousel() async {
    setState(() {
      loadFacts = true;
    });
    FirebaseStoreStoriesFacts fs = FirebaseStoreStoriesFacts();
    List<String> img = await fs.listFacts();

    for (String a in img) {
      facts.add(
        GestureDetector(
          child: Image(
            image: NetworkImage(a),
          ),
        ),
      );
    }
  }

  Future<void> makeStoriesCarousel() async {
    setState(() {
      loadStories = true;
    });
    FirebaseStoreStoriesStories fs = FirebaseStoreStoriesStories();
    List<String> img = await fs.listStories();

    for (String a in img) {
      stories.add(
        GestureDetector(
          child: Image(
            image: NetworkImage(a),
          ),
        ),
      );
    }
  }

  // List<Widget> festCarousel() {
  //   List<Widget> festList = [];
  //   for (String a in fest) {
  //     festList.add(
  //       Container(
  //         decoration: BoxDecoration(
  //           image: DecorationImage(
  //             fit: BoxFit.fitWidth,
  //             image: NetworkImage(a),
  //           ),
  //           color: Colors.black12,
  //           boxShadow: const [
  //             BoxShadow(
  //               color: Colors.grey,
  //               blurRadius: 20.0,
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  //   return festList;
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makeFestCarousel().whenComplete(() => {
          setState(() {
            loadFest = false;
          })
        });
    makeFactsCarousel().whenComplete(() => {
          setState(() {
            loadFacts = false;
          })
        });
    makeStoriesCarousel().whenComplete(() => {
          setState(() {
            loadStories = false;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            ),
          ),
          title: Text('Stories'),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Fest',
                  style: kTabTextStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Facts',
                  style: kTabTextStyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Stories',
                  style: kTabTextStyle,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              decoration: kBackgroundDecoration,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text(
                        'Fest',
                        textAlign: TextAlign.center,
                        style: kHeadingTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: loadFest
                            ? const SpinKitSpinningLines(
                                color: Colors.black,
                                size: 100,
                              )
                            : OurCarouselSlider(
                                height: deviceHeight(context) * 0.6,
                                wid: fest,
                                autoPlay: true,
                              ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OurCards(
                            child: const Text(
                              'Know more..',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            colour: const Color(0xFF00897B),
                            ontap: () {
                              _launchURL(
                                  'https://dare2compete.com/festival/robomania-21-madan-mohan-malaviya-university-of-technology-mmmut-gorakhpur-12533');
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: kBackgroundDecoration,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Text(
                      'Fact',
                      textAlign: TextAlign.center,
                      style: kHeadingTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: loadFest
                          ? const SpinKitSpinningLines(
                              color: Colors.black,
                              size: 100,
                            )
                          : OurCarouselSlider(
                              height: deviceHeight(context) * 0.6,
                              wid: facts,
                              autoPlay: true,
                            ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: kBackgroundDecoration,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Text(
                      'Stories',
                      textAlign: TextAlign.center,
                      style: kHeadingTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: loadFest
                          ? const SpinKitSpinningLines(
                              color: Colors.black,
                              size: 100,
                            )
                          : OurCarouselSlider(
                              height: deviceHeight(context) * 0.6,
                              wid: stories,
                              autoPlay: true,
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
