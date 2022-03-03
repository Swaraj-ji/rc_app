import 'package:flutter/material.dart';
import 'package:rc_app/screens/home_screen.dart';
import 'package:rc_app/screens/splash_screen.dart';
import 'package:rc_app/screens/noti_screen.dart';
import 'package:rc_app/screens/member_screen.dart';
import 'package:rc_app/screens/developer_screen.dart';
import 'package:rc_app/screens/gallery_screen.dart';
import 'package:rc_app/screens/stories_screen.dart';
import 'package:rc_app/screens/faculties_screen.dart';
import 'package:rc_app/screens/projects_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robotics Club',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.teal[900],
        appBarTheme: AppBarTheme(
          color: Colors.teal[900],
        ),
      ),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/noti': (BuildContext context) => const NotiScreen(),
        '/member': (context) => const MemberScreen(),
        'developer': (context) => const DeveloperScreen(),
        'gallery': (context) => const GalleryScreen(),
        '/stories': (context) => const StoriesScreen(),
        '/faculties': (context) => const FacultyScreen(),
        '/projects': (context) => const ProjectsScreen(),
        // '/reach_us': (context) => const ReachUsScreen(),
      },
      initialRoute: '/splash',
      //home: SplashScreen(),
    );
  }
}
