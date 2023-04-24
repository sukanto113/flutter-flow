
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: Icon(icon),
    );
  }
}
