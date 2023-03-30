// app-2
import 'package:flutter/material.dart';

class RowAndColumnLayoutAssignmentApp extends StatelessWidget {
  const RowAndColumnLayoutAssignmentApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RowAndColumnLayout(),
    );
  }
}

class RowAndColumnLayout extends StatelessWidget {
  const RowAndColumnLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red,
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}

