import 'package:flutter/material.dart';
import 'package:rc_app/main.dart';
import 'package:rc_app/constants.dart';
import 'package:rc_app/utils/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: kAppbarTitleStyle,
        ),
      ),
      drawer: OurDrawer(),
    );
  }
}
