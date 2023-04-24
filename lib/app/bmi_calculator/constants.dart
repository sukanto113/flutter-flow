import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xff1d1e33);
const kInactiveCardColor = Color(0xff111328);
const kBottomContainerColor = Color(0xffeb1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8e8d98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xff24d876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

final kBMICalculatorTheme = ThemeData.dark().copyWith(
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: const Color(0xff0a0e21),
      ),
  scaffoldBackgroundColor: const Color(0xff0a0e21),
  appBarTheme:
      ThemeData.dark().appBarTheme.copyWith(color: const Color(0xff0a0e21)),
);
