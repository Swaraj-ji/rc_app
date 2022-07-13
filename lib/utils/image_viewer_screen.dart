import 'package:flutter/material.dart';

class ImageViewerScreen extends StatelessWidget {
  final String image;

  const ImageViewerScreen({required this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
