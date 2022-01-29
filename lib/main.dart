import 'package:flutter/material.dart';
import 'package:rc_app/screens/home_screen.dart';
import 'package:rc_app/screens/splash_screen.dart';
import 'package:rc_app/screens/noti_screen.dart';
import 'package:rc_app/screens/member_screen.dart';
import 'package:rc_app/screens/developer_screen.dart';
import 'package:rc_app/screens/gallery_screen.dart';
import 'package:rc_app/screens/stories_screen.dart';
import 'package:rc_app/screens/faculties_screen.dart';
import 'package:rc_app/screens/reach_us_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robotics Club',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.teal[900],
        ),
      ),
      // routes: {
      //   '/home': (context) => const HomeScreen(),
      //   '/noti': (context) => const NotiScreen(),
      //   '/member': (context) => const MemberScreen(),
      //   'developer': (context) => const DeveloperScreen(),
      //   'gallery': (context) => const GalleryScreen(),
      //   '/stories': (context) => const StoriesScreen(),
      //   '/faculties': (context) => const FacultiesScreen(),
      //   '/reach_us': (context) => const ReachUsScreen(),
      // },
      home: SplashScreen(),
    );
  }
}
