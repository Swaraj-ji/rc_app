import 'package:flutter/material.dart';
import 'package:rc_app/constants.dart';

class OurCards extends StatelessWidget {
  final Widget child;
  final Color colour;
  final void Function()? ontap;
  const OurCards({
    required this.child,
    this.colour = const Color(0xFFEEEEEE),
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10.0),
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
