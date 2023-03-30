// app-1
import 'package:flutter/material.dart';

class IAmRichApp extends StatelessWidget {
  const IAmRichApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IAmRich(),
    );
  }
}

class IAmRich extends StatelessWidget {
  const IAmRich({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("I am Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
      ),
    );
  }
}
