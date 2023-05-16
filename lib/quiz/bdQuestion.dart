

import 'package:aaea/quiz/controleur.dart';
import 'package:flutter/material.dart';

class Quiz {
  //int indexdesquestions = 0;
  List<Question> question = [
    Question(textes:"", v1: "", v2: "", bonnereponse: "", score: 0, niveau: "0", Body:Container()),
    Question(textes: "DisneyLand sera t-il présent en Côte d'Ivoire?",v1: "Vrai",v2: "Faux",bonnereponse: "Vrai", score: 2, niveau: '1', Body: Container(),),
    Question(textes: "Christiano Ronaldo fait 1.2m",v1: "Vrai",v2: "Faux",bonnereponse: "Faux", score: 2, niveau: '2', Body: Container()),
  ];
}


