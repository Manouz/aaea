import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback Myhandler;
  final String answer;
  Answer(this.Myhandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: Myhandler, child: Text(answer)),
    );
  }
}
