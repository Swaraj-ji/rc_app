import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:rc_app/utils/floatingactionbutton_style.dart';
import 'package:rc_app/utils/home_scr_carousel.dart';
import 'package:rc_app/utils/members_information.dart';
import 'package:rc_app/utils/profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class FacultyScreen extends StatefulWidget {
  const FacultyScreen({Key? key}) : super(key: key);

  @override
  _FacultyScreenState createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<FacultyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text('Faculty Involve'),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(backGroundImage),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FacultyCard(
                  name: 'Dr. B.K. Pandey',
                  image: thirdYear[0][3],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfileScreen(
                            name: 'Dr. B.K. Pandey',
                            image: thirdYear[1][3],
                            mail: 'mailto:roboticsclub.mmmut@gmail.com',
                          );
                        },
                      ),
                    );
                  },
                ),
                FacultyCard(
                  name: 'Dr. Rajan Mishra',
                  image: thirdYear[1][3],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfileScreen(
                            name: 'Dr. Rajan Mishra',
                            image: thirdYear[1][3],
                            mail: 'mailto:rajanmishra1231@gmail.com',
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FacultyCard(
                  name: 'Dr. Dharmendra Kumar',
                  image: thirdYear[2][3],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfileScreen(
                            name: 'Dr. Dharmendra Kumar',
                            image: thirdYear[1][3],
                            mail: 'mailto:dkece@mmmut.ac.in',
                          );
                        },
                      ),
                    );
                  },
                ),
                FacultyCard(
                  name: 'Dr. B.P. Pandey',
                  image: thirdYear[3][3],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfileScreen(
                            name: 'Dr. B.P. Pandey',
                            image: thirdYear[3][3],
                            mail: 'mailto:bppece@mmmut.ac.in',
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FacultyCard extends StatelessWidget {
  final String name;
  final String image;
  final void Function() onTap;
  const FacultyCard(
      {required this.name, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return OurCards(
      colour: Color(0xFF8DC2BD),
      ontap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                thirdYear[1][3],
              ),
              radius: 70.0,
            ),
          ),
          Text(
            name,
            style: kFacultyCardNameTextStyle,
          ),
        ],
      ),
    );
  }
}
