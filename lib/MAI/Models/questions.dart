import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questionn extends StatelessWidget {
  Questionn(this.questionText);
  final String questionText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: GoogleFonts.kurale(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
