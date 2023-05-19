import 'package:aaea/MAI/Models/quiz.dart';
import 'package:aaea/MAI/Models/result.dart';
import 'package:flutter/material.dart';

class QWIZ extends StatefulWidget {
  QWIZ({super.key});

  @override
  State<StatefulWidget> createState() {
    return QWIZState();
  }
//   State<QWIZ> createState() => _QWIZState();
// }
}

class QWIZState extends State<QWIZ> {
  var _totalScore = 0;
  var _qi = 0;

  void _resetQuiz() {
    setState(() {
      var _totalScore = 0;
      var _qi = 0;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Quel est ta couleur préférée',
      'answers': [
        {"text": "Blue", "Score": 10},
        {"text": "Green", "Score": 10},
        {"text": "Yellow", "Score": 10},
        {"text": "pink", "Score": 10}
      ]
    },
    {
      'questionText': "Quels sont les temps verbaux",
      'answers': [
        {"text": "présent", "Score": 10},
        {"text": "Passé", "Score": 10},
        {"text": "Future", "Score": 10},
        {"text": "L'Imparfais", "Score": 10}
      ]
    },
    {
      'questionText': "Comment se nomme l'homme le plus petit du monde ? ",
      'answers': [
        {"text": "yiyi", "Score": 10},
        {"text": "Moli", "Score": 10},
        {"text": "Future", "Score": 10},
        {"text": "pink", "Score": 10}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _qi = _qi + 1;
    });
    //print(qi);
    if (_qi < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: _qi < _questions.length
            ? Q(
                questions: _questions,
                answerQuestion: _answerQuestion,
                qi: _qi,
              )
            : Result(
                resultScore: _totalScore,
                reset: _resetQuiz,
              ));
  }
}
