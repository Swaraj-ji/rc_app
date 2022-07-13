import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/data/members_information.dart';
import 'package:rc_app/utils/cards.dart';
import 'package:rc_app/utils/profile_screen.dart';

class FacultyScreen extends StatefulWidget {
  const FacultyScreen({Key? key}) : super(key: key);

  @override
  _FacultyScreenState createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<FacultyScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
        child: ListView.builder(
          itemCount: faculties.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: FacultyCard(
                name: faculties[index]['name'].toString(),
                image:
                    'https://rcmmm.s3.ap-south-1.amazonaws.com/faculty/${faculties[index]['img'].toString()}',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfileScreen(
                          name: faculties[index]['name'].toString(),
                          image:
                              'https://rcmmm.s3.ap-south-1.amazonaws.com/faculty/${faculties[index]['img'].toString()}',
                          mail: faculties[index]['mail'].toString(),
                        );
                      },
                    ),
                  );
                },
              ),
            );
          },
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

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return OurCards(
      colour: Color(0xFF8DC2BD),
      ontap: onTap,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(kBorderRadius),
              bottomLeft: Radius.circular(kBorderRadius),
            ),
            child: Hero(
              tag: "faculty_image",
              child: Image(
                image: NetworkImage(image),
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    "images/nointernet.gif",
                    height: deviceHeight(context) * 0.2,
                    width: deviceWidth(context) * 0.3,
                    fit: BoxFit.cover,
                  );
                },
                height: deviceHeight(context) * 0.2,
                width: deviceWidth(context) * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: deviceWidth(context) * 0.1,
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
