import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
                fit: BoxFit.fitWidth,
                width: 400,
                //height: 100,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  DefaultTextStyle(
                    style: kRCTextStyle,
                    textAlign: TextAlign.center,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Robotics Club',
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: double.infinity,
                  ),
                  DefaultTextStyle(
                    style: kNormalTextStyle,
                    textAlign: TextAlign.center,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Madan Mohan Malaviya University of Technology',
                          speed: const Duration(milliseconds: 30),
                        ),
                      ],
                      totalRepeatCount: 1,
                      onFinished: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                    ),
                  ),
                  DefaultTextStyle(
                    style: kNormalTextStyle,
                    textAlign: TextAlign.center,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Gorakhpur',
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 1,
                    ),
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
