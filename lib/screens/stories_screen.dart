import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:rc_app/utils/home_scr_carousel.dart';
import 'package:url_launcher/url_launcher.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  List<String> fest = [
    'https://www.a1wineandspirit.com/media/yhwie5wr/liquor-large.jpg',
    'https://images.unsplash.com/photo-1526894198609-10b3cdf45c52',
    'https://cdn.shopify.com/s/files/1/0284/1372/2703/files/Teremana-social-share_grande.jpg',
    'https://i.pinimg.com/originals/7f/da/d6/7fdad60a903375223b8b07b0ed697a07.jpg',
    'https://i2-prod.buzz.ie/incoming/article24278921.ece/ALTERNATES/s1200c/0_peaky-blinders-season-5.jpg',
  ];

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

  List<Widget> festCarousel() {
    List<Widget> festList = [];
    for (String a in fest) {
      festList.add(
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(a),
            ),
            color: Colors.black12,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0,
              ),
            ],
          ),
        ),
      );
    }
    return festList;
  }

  List<Widget> factCarousel() {
    List<Widget> festList = [];
    for (String a in fest) {
      festList.add(
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(a),
            ),
            color: Colors.black12,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0,
              ),
            ],
          ),
        ),
      );
    }
    return festList;
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
            child: Icon(
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
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Latest Fest',
                        textAlign: TextAlign.center,
                        style: kHeadingTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: OurCarouselSlider(
                          height: 400,
                          wid: festCarousel(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OurCards(
                            child: Text(
                              'Know more..',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            colour: Color(0xFF00897B),
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
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Fact',
                      textAlign: TextAlign.center,
                      style: kHeadingTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: OurCarouselSlider(
                        height: 400,
                        wid: festCarousel(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: kBackgroundDecoration,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Stories',
                      textAlign: TextAlign.center,
                      style: kHeadingTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: OurCarouselSlider(
                        height: 400,
                        wid: festCarousel(),
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
