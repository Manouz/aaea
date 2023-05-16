import 'package:aaea/Quizz/Model/maclasse.dart';
import 'package:aaea/Quizz/question.dart';
import 'package:flutter/material.dart';

class Quiz {
  //int indexdesquestions = 0;
  List<Questions> question = [
    Questions(textes:"", v1: "", v2: "", bonnereponse: "", score: 0, niveau: "0", Body:Conteneur()),
    Questions(textes: "DisneyLand sera t-il présent en Côte d'Ivoire?",v1: "Vrai",v2: "Faux",bonnereponse: "Vrai", score: 2, niveau: '1', Body: Conteneur1(),),
    Questions(textes: "Christiano Ronaldo fait 1.2m",v1: "Vrai",v2: "Faux",bonnereponse: "Faux", score: 2, niveau: '2', Body: Conteneur2()),
  ];
}


