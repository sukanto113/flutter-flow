import 'dart:math';

import 'package:flutter/material.dart';

class Magic8BallPage extends StatelessWidget {
  const Magic8BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text("Ask Me Anything"),
      ),
      body: const Magic8Ball(),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('assets/images/magic8ball/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
