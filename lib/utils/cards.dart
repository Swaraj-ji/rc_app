import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';

class OurCards extends StatelessWidget {
  final Widget child;
  const OurCards({required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(kBorderRadius),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
