//import 'package:aaea/quiz/controleur.dart';


import 'package:flutter/material.dart';
import '../Models/answer.dart';
import '../Models/questions.dart';

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
  var qi = 1;
  List<Map<String,Object>> questions = [
    {
      'questionText':'Quel est ta couleur préférée',
      'answers':["Blue","Green","Yellow","pink"]
    },
    {
      'questionText':"Quels sont les temps verbaux",
      'answers':["présent","Passé","Future","L'Imparfais"]
    },
    {
      'questionText':"Comment se nomme l'homme le plus petit du monde ? ",
      'answers':["yiyi","Moli","Future","pink"]
    },
  ];
  answerQuestion() {
    setState(() {
      qi = qi + 1;
    });
    //print(qi);
     if (qi < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: qi<questions.length ?
       Column(
        //ici nous avons une liste de widget
        children: [
          Questionn((questions[qi]['questionTest'])as String),
          //On veut transformer la liste en quelque chose de simple
          //La méthohe map exécute une fonction qui recois un parametre et sera exécuté pour tous les elmts de la liste questions
          ...(questions[qi]['answers']as List<String>).map((answer) {
            return Answer(answerQuestion,answer);
          }).toList()
        ],
      ):Center(child: Text("TU VOIS?"),)
    );
  }
}
