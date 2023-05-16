import 'package:aaea/Quizz/question.dart';
import 'package:aaea/Quizz/questionnaire.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Conteneur extends StatefulWidget {
  const Conteneur({super.key});

  @override
  State<Conteneur> createState() => _ConteneurState();
}

class _ConteneurState extends State<Conteneur> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Holla!"));
  }
}

class Conteneur1 extends StatefulWidget {
  const Conteneur1({super.key});

  @override
  State<Conteneur1> createState() => _Conteneur1State();
}

class _Conteneur1State extends State<Conteneur1> {
  List<Questions> Qz = Quiz().question;
  int i = 1;
  late bool value;
  int Sc=0;

  List<Icon> icones = [];
  Score(int note){
      var niv= Qz[i].niveau;
    if (Qz[i].score==note) {
      
      
    }else{

    }

  }
  updateScore({required bool T}) {
  
    setState(() {
      if (T) {Sc =Sc+1;icones.add(Icon(Icons.check,color: Colors.green,size: 30,));
      }else{Sc =Sc-1;icones.add(Icon(Icons.close,color: Colors.red,size: 30,));}
    });
    
  }

  Response(String response) {
   
      if (Qz[i].bonnereponse == response) {
        updateScore(T: true);
        Score(2);
      } else {
        updateScore(T: false);
        Score(-2);
      }
   
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            child: Text(
              Qz[i].textes,
              style: GoogleFonts.italianno(fontSize: 60),
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Response(Qz[i].v1);
                      },
                      child: Text("  Vrai  ")),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Response(Qz[i].v2);
                        //response(Q.gettextes());
                      },
                      child: Text("  Faux  ")),
                ],
              ),
            )),
        Expanded(
          child: Align(
          alignment: Alignment.bottomRight,
         
              child:Container(
                color: Colors.amber,
                height: 30,
                child: ListView(scrollDirection: Axis.horizontal, children: icones),
              ),

            
          ),
        )
        
      ],
    );
  }
}

class Conteneur2 extends StatefulWidget {
  const Conteneur2({super.key});

  @override
  State<Conteneur2> createState() => _Conteneur2State();
}

class _Conteneur2State extends State<Conteneur2> {
  List<Questions> Qz = Quiz().question;
  List<Icon> icones = [];
  int i = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            child: Text(
              Qz[i].textes,
              style: GoogleFonts.italianno(fontSize: 60),
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {/*response(Q.gettextes());*/},
                      child: Text("  Vrai  ")),
                  SizedBox(width: 30),
                  ElevatedButton(
                      onPressed: () {/*response(Q.gettextes());*/},
                      child: Text("  Faux  ")),
                  SizedBox(width: 30),
                ],
              ),
            )),
        Expanded(
            child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            color: Colors.amber,
            height: 30,
            child: ListView(scrollDirection: Axis.horizontal, children: icones),
          ),
        ))
      ],
    );
  }
}




 


//   List<Questions> Qz = Quiz().question;
// int idx=0;
//    List<Icon> icones = [];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(100.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//               ),
//               child: Text(
//                 Qz[idx].textes,
//                 style: GoogleFonts.italianno(fontSize: 60),
//               ),
//             ),
//           ),
//           Expanded(
//               flex: 3,
//               child: Align(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                         onPressed: () {
//                           //response(Q.gettextes());
//                         },
//                         child: Text("  Vrai  ")),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     ElevatedButton(
//                         onPressed: () {
//                           //response(Q.gettextes());
//                         },
//                         child: Text("  Faux  ")),
//                   ],
//                 ),
//               )),
//           Expanded(
//               child: Align(
//             alignment: Alignment.bottomRight,
//             child: Container(
//               color: Colors.amber,
//               height: 30,
//               child:
//                   ListView(scrollDirection: Axis.horizontal, children: icones),
//             ),
//           ))
//         ],
//       );
//   }
// }





// 
