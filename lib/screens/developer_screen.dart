import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';

class DeveloperScreen extends StatefulWidget {
  const DeveloperScreen({Key? key}) : super(key: key);

  @override
  _DeveloperScreenState createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
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
        title: Text('Developers'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(backGroundImage),
          ),
        ),
      ),
    );
    ;
  }
}
