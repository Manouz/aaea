import 'package:flutter/material.dart';

class Question {
  String textes;
  String v1;
  String v2;
  String bonnereponse;
  int score;
  String niveau;
  Widget Body;

  //creation du constructeur
  Question(
      {required this.textes,
      required this.v1,
      required this.v2,
      required this.bonnereponse,
      required this.score,
      required this.niveau,
      required this.Body});
}
