// app-3
import 'package:flutter/material.dart';

class MiCardApp extends StatelessWidget {
  const MiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MiCard(),
    );
  }
}

class MiCard extends StatelessWidget {
  const MiCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
            const Text(
              'John Dow',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
                thickness: 1,
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+1 234 567 8910',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'email@example.com',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
