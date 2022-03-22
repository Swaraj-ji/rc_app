import 'package:firebase_core/firebase_core.dart';
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
import 'package:splash_screen_view/SplashScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robotics Club',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.teal[600],
        appBarTheme: AppBarTheme(
          color: Colors.teal[600],
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
      },
      home: Scaffold(
        body: SplashScreenView(
          navigateRoute: SplashScreen(),
          duration: 3000,
          imageSize: 300,
          imageSrc: "images/rc_logo.png",
          backgroundColor: Colors.white,
        ),
      ),
      //initialRoute: '/splash',
      //home: SplashScreen(),
    );
  }
}
