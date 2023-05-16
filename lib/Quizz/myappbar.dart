import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Questions pour un Millionnaire"),
      actions: [Text("Score: $score")],
    );
  }
}
