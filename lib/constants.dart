import 'package:flutter/material.dart';

const TextStyle kRCTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Colors.black,
);

const TextStyle kNormalTextStyle = TextStyle(
  color: Colors.black,
);

const TextStyle kHeadingTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

const TextStyle kAppbarTitleStyle = TextStyle(
  fontWeight: FontWeight.bold,
);

const TextStyle kDrawerListItemTextStyle = TextStyle(
  fontSize: 15,
);

const double kBorderRadius = 10.0;

const String backGroundImage = 'images/light-wool.png';

const BoxDecoration kBackgroundDecoration = BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage(backGroundImage),
  ),
);

const TextStyle kFacultyCardNameTextStyle = TextStyle(fontSize: 15);

const TextStyle kTabTextStyle = TextStyle(
  fontSize: 20,
);
