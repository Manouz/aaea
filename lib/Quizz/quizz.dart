import 'package:aaea/Quizz/Model/maclasse.dart';
import 'package:aaea/Quizz/myappbar.dart';
import 'package:aaea/Quizz/question.dart';
import 'package:aaea/Quizz/questionnaire.dart';
import 'package:aaea/bodydrawerlist.dart';
import 'package:aaea/headerd_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<Questions> Q = Quiz().question;
  Conteneur1 sc = Conteneur1();
  int indexx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MyAppBar(score: ),
      body: Q[indexx].Body,
     // endDrawer: ,
    );
  }
}
