import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/data/events_data.dart';
import 'package:rc_app/data/posters_data.dart';
import 'package:rc_app/utils/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rc_app/utils/events_screen.dart';
import 'package:rc_app/utils/floatingactionbutton_style.dart';
import 'package:rc_app/utils/home_scr_carousel.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(backGroundImage),
            ),
          ),
          child: SingleChildScrollView(
            //physics: const BouncingScrollPhysics(),
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
                  'Madan Mohan Malaviya University of Technology',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: OurCarouselSlider(
                    autoPlay: true,
                    wid: [
                      HomeScreenFirstCarouselImage(
                        image: homeScreenCarouselPosters[0],
                      ),
                      HomeScreenFirstCarouselImage(
                        image: homeScreenCarouselPosters[1],
                      ),
                      HomeScreenFirstCarouselImage(
                        image: homeScreenCarouselPosters[2],
                      ),
                      HomeScreenFirstCarouselImage(
                        image: homeScreenCarouselPosters[3],
                      ),
                      HomeScreenFirstCarouselImage(
                        image: homeScreenCarouselPosters[4],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OurCards(
                      bottomPad: 10.0,
                      topPad: 10.0,
                      rightPad: 10.0,
                      leftPad: 10.0,
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
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          bottomPad: 10.0,
                          child: OurEventsCardDecor(
                            image: eventImage["robomania"].toString(),
                            eventName: 'Robomania',
                            eventDesc: 'Campus Event',
                            eventYear: '2021',
                          ),
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EventsScreen(
                                    frame: getRobomania(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          bottomPad: 10.0,
                          child: OurEventsCardDecor(
                            image: eventImage["synergia"].toString(),
                            eventName: 'Synergia',
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EventsScreen(
                                    frame: getSynergia(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          bottomPad: 10.0,
                          child: OurEventsCardDecor(
                            image: eventImage["EnggWeek"].toString(),
                            eventName: "Engineer's Week",
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EventsScreen(
                                    frame: getEngWeek(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          bottomPad: 10.0,
                          child: OurEventsCardDecor(
                            image: eventImage["CTC"].toString(),
                            eventName: 'Cladding The Code',
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EventsScreen(
                                    frame: getCladdingTheCode(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          bottomPad: 10.0,
                          child: OurEventsCardDecor(
                            image: eventImage["WebD"].toString(),
                            eventName: 'Web D Classes',
                            eventDesc: 'Workshop',
                            eventYear: '2021',
                          ),
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EventsScreen(
                                    frame: getWebDev(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        OurCards(
                          bottomPad: 10.0,
                          child: OurEventsCardDecor(
                            image: eventImage["4_year"].toString(),
                            eventName: 'Four Year Challenge',
                            eventDesc: 'Online Event',
                            eventYear: '2021',
                          ),
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EventsScreen(
                                    frame: getFourYearChallenge(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
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
                      rightPad: 10,
                      child: UpComingEventsCardDecor(
                        image: upcomingEventPosters[0],
                        eventName: 'Robomania',
                        eventDesc: 'Campus Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      rightPad: 10,
                      child: UpComingEventsCardDecor(
                        image: upcomingEventPosters[1],
                        eventName: 'Synergia',
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      rightPad: 10,
                      child: UpComingEventsCardDecor(
                        image: upcomingEventPosters[2],
                        eventName: "Engineer's Week",
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      rightPad: 10,
                      child: UpComingEventsCardDecor(
                        image: upcomingEventPosters[3],
                        eventName: 'Cladding The Code',
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      rightPad: 10,
                      child: UpComingEventsCardDecor(
                        image: upcomingEventPosters[4],
                        eventName: 'Web D Classes',
                        eventDesc: 'Workshop',
                        eventYear: '2022',
                      ),
                    ),
                    OurCards(
                      rightPad: 10,
                      child: UpComingEventsCardDecor(
                        image: upcomingEventPosters[5],
                        eventName: 'Four Year Challenge',
                        eventDesc: 'Online Event',
                        eventYear: '2022',
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                    color: Color(0xFF00897B),
                  ),
                ),
                const Text(
                  'This is the Official App of Robotics Club',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
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
                      Text('Phone No.: +91-7318536429'),
                      Text("Email: roboticsclub.mmmut@gmail.com")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Creators: ',
                        style: kDevelopersLineTextStyle,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchURL(
                              'https://www.instagram.com/swaraj_ji_srivastava/');
                        },
                        child: const Text(
                          'Swaraj ',
                          style: kDevelopersTextStyle,
                        ),
                      ),
                      const Text(
                        '&',
                        style: kDevelopersLineTextStyle,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchURL('https://www.instagram.com/shaaaannn_/');
                        },
                        child: const Text(
                          ' Shantanu',
                          style: kDevelopersTextStyle,
                        ),
                      ),
                    ],
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
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.fill,
        progressIndicatorBuilder: (context, url, progress) => Center(
          child: CircularProgressIndicator(
            value: progress.progress,
          ),
        ),
        errorWidget: (BuildContext context, url, error) {
          return Image.asset(
            'images/nointernet.gif',
          );
        },
      ),
      // child: Image.network(
      //   image,
      //   fit: BoxFit.cover,
      //   errorBuilder:
      //       (BuildContext context, Object exception, StackTrace? stackTrace) {
      //     return Image.asset(
      //       'images/nointernet.gif',
      //     );
      //   },
      // ),
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
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(kBorderRadius),
            bottomLeft: Radius.circular(kBorderRadius),
          ),
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            errorWidget: (BuildContext context, url, error) {
              return Image.asset(
                'images/nointernet.gif',
              );
            },
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
          child: CachedNetworkImage(
            imageUrl: image,
            width: 300,
            height: 150,
            fit: BoxFit.fill,
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            errorWidget: (BuildContext context, url, error) {
              return Image.asset(
                'images/nointernet.gif',
              );
            },
          ),
          // child: Image.network(
          //   image,
          //   width: 300,
          //   height: 150,
          //   fit: BoxFit.fill,
          //   errorBuilder: (BuildContext context, Object exception,
          //       StackTrace? stackTrace) {
          //     return Image.asset(
          //       'images/nointernet.gif',
          //       width: 300,
          //       height: 150,
          //       fit: BoxFit.fill,
          //     );
          //   },
          // ),
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
