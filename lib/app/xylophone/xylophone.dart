import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            XylophoneKey(
              keyNumber: 1,
              color: Colors.red,
            ),
            XylophoneKey(
              keyNumber: 2,
              color: Colors.orange,
            ),
            XylophoneKey(
              keyNumber: 3,
              color: Colors.yellow,
            ),
            XylophoneKey(
              keyNumber: 4,
              color: Colors.green,
            ),
            XylophoneKey(
              keyNumber: 5,
              color: Colors.teal,
            ),
            XylophoneKey(
              keyNumber: 6,
              color: Colors.blue,
            ),
            XylophoneKey(
              keyNumber: 7,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class XylophoneKey extends StatelessWidget {
  final int keyNumber;
  final Color color;
  const XylophoneKey({
    super.key,
    required this.keyNumber,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          playSound(keyNumber);
        },
        child: const SizedBox(
          width: 100,
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('wav/note$keyNumber.wav'));
  }
}
