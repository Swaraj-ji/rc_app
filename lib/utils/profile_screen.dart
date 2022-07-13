import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  final String image;
  final String name;
  final String mail;
  const ProfileScreen(
      {required this.name, required this.image, this.mail = ""});

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
        body: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/techbackground.jpg'),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: "faculty_image",
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                image,
                              ),
                              radius: 100.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(backGroundImage),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          name,
                          style: kHeadingTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: OurCards(
                  topPad: 10.0,
                  bottomPad: 10.0,
                  rightPad: 10.0,
                  leftPad: 10.0,
                  colour: const Color(0xFF00897B),
                  child: const Icon(
                    Icons.mail_outline,
                    size: 40,
                  ),
                  ontap: () {
                    _launchURL(mail);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
