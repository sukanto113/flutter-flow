import 'package:course_prac_app/app/assigments/row_and_column_layout_assignment.dart';
import 'package:course_prac_app/app/i_am_rich/i_am_rich_app.dart';
import 'package:course_prac_app/app/mi_card/mi_card_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          "Flutter Flow",
          style: TextStyle(
            color: Colors.blueGrey.shade50,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.privacy_tip_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          AppListItem(
            title: "I am Rich",
            onTap: () {
              pushRoute(context, const IAmRich());
            },
          ),
          AppListItem(
            title: "Row and Column Layout",
            onTap: () {
              pushRoute(context, const RowAndColumnLayout());
            },
          ),
          AppListItem(
            title: "Mi Card",
            onTap: () {
              pushRoute(context, const MiCard());
            },
          ),
        ],
      ),
    );
  }

  void pushRoute(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}

class AppListItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppListItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: Card(
        color: Colors.blueGrey.shade50,
        child: ListTile(
          leading: Icon(
            Icons.verified_outlined,
            color: Colors.blueGrey.shade500,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade800,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
