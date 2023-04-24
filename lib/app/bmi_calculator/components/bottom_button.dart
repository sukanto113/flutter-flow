
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Function() onTap;
  const BottomButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}