import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rc_app/constants.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({Key? key}) : super(key: key);

  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  bool selected1 = false, selected2 = false, selected3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          title: Text('Members'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // shrinkWrap: true,
            // primary: false,
            children: [
              Column(
                children: [
                  AnimatedContainer(
                    height: !selected1 ? 200 : null,
                    //height: 200,
                    duration: const Duration(seconds: 1),
                    color: Color(0xFF2A8274),
                    child: ExpansionTile(
                      title: Text("2022"),
                      children: [
                        ListView(
                          shrinkWrap: true,
                          primary: false,
                          children: [
                            MembersCard(),
                            MembersCard(),
                            MembersCard(),
                            MembersCard(),
                          ],
                        )
                      ],
                      onExpansionChanged: (value) {
                        setState(() {
                          selected1 = value;
                        });
                      },
                    ),
                  ),
                  AnimatedContainer(
                    height: !selected2 ? 200 : null,
                    //height: 200,
                    duration: const Duration(seconds: 2),
                    color: Color(0xFF3AAA97),
                    child: ExpansionTile(
                      title: Text("2023"),
                      onExpansionChanged: (value) {
                        setState(() {
                          selected2 = value;
                        });
                      },
                      children: [
                        ListView(
                          shrinkWrap: true,
                          primary: false,
                          children: [
                            MembersCard(),
                            MembersCard(),
                            MembersCard(),
                            MembersCard(),
                          ],
                        )
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    height: !selected3 ? 200 : null,
                    //height: 200,
                    duration: const Duration(seconds: 2),
                    color: Color(0xFF43CDB5),
                    child: ExpansionTile(
                      title: Text("2024"),
                      onExpansionChanged: (value) {
                        setState(() {
                          selected3 = value;
                        });
                      },
                      children: [
                        ListView(
                          shrinkWrap: true,
                          primary: false,
                          children: [
                            MembersCard(),
                            MembersCard(),
                            MembersCard(),
                            MembersCard(),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// color: Color(0xFFE81679),
// color: Color(0xFFE94592),
// color: Color(0xFFF5B2D1),

class MembersCard extends StatelessWidget {
  const MembersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 290,
        ),
        Container(
          height: 150,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(right: 20.0, left: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(kBorderRadius),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Branch",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                "Designation",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 190.0,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/rc_logo.jpg'),
            radius: 50.0,
          ),
        ),
        Positioned(
          top: 200,
          child: Container(
            width: 250,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(FontAwesomeIcons.instagram),
                Icon(FontAwesomeIcons.facebook),
                Icon(FontAwesomeIcons.linkedin),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
