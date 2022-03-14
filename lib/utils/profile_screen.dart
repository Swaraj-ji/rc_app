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
                      decoration: BoxDecoration(
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
                                child: Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              image,
                            ),
                            radius: 100.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(backGroundImage),
                        ),
                      ),
                      child: Text(name),
                    ),
                  ),
                ],
              ),
              Center(
                child: OurCards(
                  colour: Color(0xFF00897B),
                  child: Icon(
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