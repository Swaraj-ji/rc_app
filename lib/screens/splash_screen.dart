import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rc_app/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print('Inside Init');
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              flex: 4,
              child: Image.asset(
                'images/rc_logo.png',
                fit: BoxFit.cover,
                //width: 200,
                //height: 100,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Text(
                    'Robotics Club',
                    style: kRCTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                    width: double.infinity,
                  ),
                  Text(
                    'Madan Mohan Malaviya University of Technology',
                    style: kNormalTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Gorakhpur',
                    textAlign: TextAlign.center,
                    style: kNormalTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
