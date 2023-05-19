import 'package:aaea/MAI/Models/answer.dart';
import 'package:aaea/MAI/Models/questions.dart';
import 'package:flutter/material.dart';

class Q extends StatelessWidget {
  List<Map<String, Object>> questions;
  final int qi;
  final Function answerQuestion;
  Q({required this.questions, required this.qi, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      //ici nous avons une liste de widget
      children: [
        Questionn(questions[qi]['questionText'] as String),
        SizedBox(height: 20),
        //On veut transformer la liste en quelque chose de simple
        //La méthohe map exécute une fonction qui recois un parametre et sera exécuté pour tous les elmts de la liste questions
        ...(questions[qi]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['Score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
