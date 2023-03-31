
import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset("assets/images/dices/dice$leftDiceNumber.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset("assets/images/dices/dice$rightDiceNumber.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
