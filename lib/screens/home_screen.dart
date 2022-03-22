import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/utils/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rc_app/utils/floatingactionbutton_style.dart';
import 'package:rc_app/utils/home_scr_carousel.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: kAppbarTitleStyle,
          ),
        ),
        drawer: OurDrawer(),
        floatingActionButton: ExpandableFab(
          distance: 112.0,
          children: [
            ActionButton(
              onPressed: () {
                print('Instagram');
                _launchURL(
                    'https://www.instagram.com/robotics_club_mmmut/?hl=en');
              },
              icon: const Icon(FontAwesomeIcons.instagram),
            ),
            ActionButton(
              onPressed: () {
                print('Facebook');
                _launchURL('https://www.facebook.com/roboticsclub.mmmut/');
              },
              icon: const Icon(FontAwesomeIcons.facebook),
            ),
            ActionButton(
              onPressed: () {
                print('Youtube');
                _launchURL(
                    'https://www.youtube.com/channel/UCq1SGYOxepwOHBE8eQcE_Pg/featured');
              },
              icon: const Icon(FontAwesomeIcons.youtube),
            ),
            ActionButton(
              onPressed: () {
                print('Email');
                _launchURL('mailto:roboticsclub.mmmut@gmail.com');
              },
              icon: const Icon(FontAwesomeIcons.envelope),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(backGroundImage),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const Text(
                  'Robotics Club',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'SourceSerifExtraBold',
                  ),
                ),
                const Text(
                  'Madan Mahon Malaviya University of Technology',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: OurCarouselSlider(
                    autoPlay: true,
                    wid: [
                      HomeScreenFirstCarouselImage(
                        image:
                            'https://www.a1wineandspirit.com/media/yhwie5wr/liquor-large.jpg',
                      ),
                      HomeScreenFirstCarouselImage(
                        image:
                            'https://images.unsplash.com/photo-1526894198609-10b3cdf45c52',
                      ),
                      HomeScreenFirstCarouselImage(
                        image:
                            'https://cdn.shopify.com/s/files/1/0284/1372/2703/files/Teremana-social-share_grande.jpg',
                      ),
                      HomeScreenFirstCarouselImage(
                        image:
                            'https://i.pinimg.com/originals/7f/da/d6/7fdad60a903375223b8b07b0ed697a07.jpg',
                      ),
                      HomeScreenFirstCarouselImage(
                        image:
                            'https://i2-prod.buzz.ie/incoming/article24278921.ece/ALTERNATES/s1200c/0_peaky-blinders-season-5.jpg',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OurCards(
                      colour: Color(0xFF00897B),
                      ontap: () {
                        Navigator.pushNamed(context, '/noti');
                      },
                      child: Row(
                        children: const [
                          Icon(FontAwesomeIcons.scroll),
                          SizedBox(width: 10.0),
                          Text('Notices'),
                        ],
                      ),
                    ),
                    // const OurCards(
                    //   child: Icon(FontAwesomeIcons.instagram),
                    // ),
                    // const OurCards(
                    //   child: Icon(FontAwesomeIcons.facebook),
                    // ),
                    // const OurCards(
                    //   child: Icon(FontAwesomeIcons.youtube),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Our Major Events',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          child: OurEventsCardDecor(
                            image:
                                'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
                            eventName: 'Robomania',
                            eventDesc: 'Campus Event',
                            eventYear: '2021',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          child: OurEventsCardDecor(
                            image:
                                'https://pbs.twimg.com/media/D6c-idvUUAAPWq2.jpg',
                            eventName: 'Synergia',
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          child: OurEventsCardDecor(
                            image:
                                'https://sm.mashable.com/mashable_in/photo/default/got-cover-3_p42q.jpg',
                            eventName: "Engineer's Week",
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          child: OurEventsCardDecor(
                            image:
                                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/theory-1553634761.jpg',
                            eventName: 'Cladding The Code',
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          child: OurEventsCardDecor(
                            image:
                                'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
                            eventName: 'Web D Classes',
                            eventDesc: 'Workshop',
                            eventYear: '2021',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          child: OurEventsCardDecor(
                            image:
                                'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
                            eventName: 'Four Year Challenge',
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'UpComing Events',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                OurCarouselSlider(
                  paddingTopBottom: 10.0,
                  wid: [
                    OurCards(
                      child: UpComingEventsCardDecor(
                        image: 'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
                        eventName: 'Robomania',
                        eventDesc: 'Campus Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      child: UpComingEventsCardDecor(
                        image:
                            'https://pbs.twimg.com/media/D6c-idvUUAAPWq2.jpg',
                        eventName: 'Synergia',
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      child: UpComingEventsCardDecor(
                        image:
                            'https://sm.mashable.com/mashable_in/photo/default/got-cover-3_p42q.jpg',
                        eventName: "Engineer's Week",
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      child: UpComingEventsCardDecor(
                        image:
                            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/theory-1553634761.jpg',
                        eventName: 'Cladding The Code',
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      child: UpComingEventsCardDecor(
                        image: 'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
                        eventName: 'Web D Classes',
                        eventDesc: 'Workshop',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      child: UpComingEventsCardDecor(
                        image: 'https://i.ibb.co/0YJgJxT/1-Game-of-thrones.jpg',
                        eventName: 'Four Year Challenge',
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Color(0xFF00897B),
                  ),
                ),
                Text(
                  'This is the Official App of Robotics Club',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xFF024E47),
                        ),
                      ),
                      Text('Madan Mohan Malaviya University of Technology,'),
                      Text('Gorakhpur, Uttar Pradesh'),
                      Text('Phone No. ')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Developers: Swaraj & Shantanu',
                    style: TextStyle(
                      color: Color(0xFF00897B),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreenFirstCarouselImage extends StatelessWidget {
  final String image;
  const HomeScreenFirstCarouselImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Image.asset(
            'images/nointernet.gif',
          );
        },
      ),
    );
  }
}

class UpComingEventsCardDecor extends StatelessWidget {
  final String image, eventName, eventDesc, eventYear;
  const UpComingEventsCardDecor(
      {required this.image,
      required this.eventName,
      required this.eventDesc,
      required this.eventYear});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(kBorderRadius),
              bottomLeft: Radius.circular(kBorderRadius),
            ),
            child: Image.network(
              image,
              height: 150,
              fit: BoxFit.fill,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Image.asset(
                  'images/nointernet.gif',
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                eventName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                eventDesc,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              Text(
                eventYear,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class OurEventsCardDecor extends StatelessWidget {
  final String image, eventName, eventDesc, eventYear;
  const OurEventsCardDecor(
      {required this.image,
      required this.eventName,
      required this.eventDesc,
      required this.eventYear});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(kBorderRadius),
            topRight: Radius.circular(kBorderRadius),
          ),
          child: Image.network(
            image,
            width: 300,
            height: 150,
            fit: BoxFit.fill,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return Image.asset(
                'images/nointernet.gif',
                width: 300,
                height: 150,
                fit: BoxFit.fill,
              );
            },
          ),
        ),
        Text(
          eventName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          eventDesc,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        Text(
          eventYear,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
