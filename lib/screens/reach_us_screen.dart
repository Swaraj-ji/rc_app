import 'package:flutter/material.dart';

class ReachUsScreen extends StatefulWidget {
  const ReachUsScreen({Key? key}) : super(key: key);

  @override
  _ReachUsScreenState createState() => _ReachUsScreenState();
}

class _ReachUsScreenState extends State<ReachUsScreen> {
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
        title: Text('Reach Us'),
      ),
    );
  }
}
