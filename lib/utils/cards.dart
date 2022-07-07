import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';

class OurCards extends StatelessWidget {
  final Widget child;
  final Color colour;
  final double bottomPad;
  final double topPad;
  final double rightPad;
  final double leftPad;
  final void Function()? ontap;
  const OurCards({
    required this.child,
    this.colour = const Color(0xFFEEEEEE),
    this.ontap,
    this.bottomPad = 0.0,
    this.topPad = 0.0,
    this.rightPad = 0.0,
    this.leftPad = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(
            left: leftPad, right: rightPad, bottom: bottomPad, top: topPad),
        decoration: BoxDecoration(
          color: colour,
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
