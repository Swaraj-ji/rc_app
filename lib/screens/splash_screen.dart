import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rc_app/screens/home_screen.dart';
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
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            // child: Image.asset(
            //   'images/rc_logo.jpg',
            //   scale: 5.0,
            //   alignment: AlignmentDirectional.bottomCenter,
            // ),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: CircleAvatar(
                radius: 200.0,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Image.asset(
                    'images/rc_logo.jpg',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SpinKitDancingSquare(
              color: Colors.black,
              size: 100,
            ),
          ),
          Expanded(
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
    );
  }
}
