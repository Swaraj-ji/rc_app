import 'package:flutter/material.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:rc_app/utils/home_scr_carousel.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
        ),
        title: Text('Faculties'),
      ),
      body: Center(
        child: OurCarouselSlider(
          height: 400,
          wid: [
            OurCards(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/rc_logo.jpg'),
                    radius: 50.0,
                  ),
                  Text(
                    "B.K. Pandey",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Chairman Council of Student Activities",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(FontAwesomeIcons.instagram),
                      Icon(FontAwesomeIcons.facebook),
                      Icon(FontAwesomeIcons.linkedin),],
                  )

                ],
              ),
            ),
            OurCards(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/rc_logo.jpg'),
                    radius: 50.0,
                  ),
                  Text(
                    "B.p. Pandey",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Chairman Council of Student Activities",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(FontAwesomeIcons.instagram),
                      Icon(FontAwesomeIcons.facebook),
                      Icon(FontAwesomeIcons.linkedin),],
                  )

                ],
              ),
            ),OurCards(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/rc_logo.jpg'),
                    radius: 50.0,
                  ),
                  Text(
                    "Dr. Dharmendra ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Chairman Council of Student Activities",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(FontAwesomeIcons.instagram),
                      Icon(FontAwesomeIcons.facebook),
                      Icon(FontAwesomeIcons.linkedin),],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
