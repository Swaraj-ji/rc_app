import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:rc_app/utils/home_scr_carousel.dart';
import 'package:rc_app/utils/members_information.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({Key? key}) : super(key: key);

  @override
  _MemberScreenState createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  bool selected1 = false, selected2 = false, selected3 = false;

  void showSheet(List<List<String>> batch) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return OurDraggableScrollableSheet(
          whichBatch: batch,
        );
      },
    );
  }

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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(backGroundImage),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    showSheet(finalYear);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Batch of 2022',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF0AB191),
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    showSheet(thirdYear);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Batch of 2023',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF0AF3C7),
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    showSheet(secYear);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Batch of 2024',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF5AEED2),
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                  ),
                ),
              ),
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

class OurDraggableScrollableSheet extends StatelessWidget {
  final List<List<String>> whichBatch;
  OurDraggableScrollableSheet({required this.whichBatch});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      maxChildSize: 0.8,
      expand: false,
      builder: (_, controller) {
        return Container(
          padding: EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            color: Colors.white60,
          ),
          child: ListView.builder(
            controller: controller,
            itemCount: whichBatch.length,
            itemBuilder: (context, index) {
              return MembersCard(
                name: whichBatch[index][0],
                branch: whichBatch[index][1],
                designation: whichBatch[index][2],
                image: whichBatch[index][3],
              );
            },
          ),
        );
      },
    );
  }
}

class MembersCard extends StatelessWidget {
  final String name;
  final String branch;
  final String designation;
  final String image;
  const MembersCard(
      {required this.name,
      required this.branch,
      required this.designation,
      required this.image});

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
                '$name',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                '$branch',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                '$designation',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 190.0,
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
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
