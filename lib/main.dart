import 'package:aaea/MAI/Vue/home.dart';
import 'package:aaea/Quizz/quizz.dart';
import 'package:aaea/bodydrawerlist.dart';
import 'package:aaea/convertisseur/convertisseur.dart';
import 'package:aaea/gridview/gridview.dart';
import 'package:aaea/headerd_drawer.dart';
import 'package:aaea/myprofilscreen/profilscreen.dart';
//import 'package:aaea/quiz/home.dart';
import 'package:aaea/section_dix_neuf/index.dart';
import 'package:aaea/section_douze/home.dart';
import 'package:aaea/todolist/todolist.dart';
import 'package:aaea/xylophone/xylophone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aaea/facebook/pagefb.dart';
//import 'package:aaea/section_dix_neuf/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _switch = false;

  ThemeData _dark =
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.white);

  ThemeData _light =
      ThemeData(brightness: Brightness.light, primaryColor: Colors.black);

  @override
  Widget build(BuildContext context) {
    //var home_quizz = Home_Quizz;
    return MaterialApp(
        //title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        /* theme: ThemeData(
        primarySwatch: Colors.teal,
      ), */
        theme: _switch ? _dark : _light,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              Switch(
                  value: _switch,
                  onChanged: (_newValue) {
                    setState(() {
                      _switch = _newValue;
                    });
                  })
            ],
          ),
          body: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(children: [
              Text("Bienvenue dans mon application",
                  style: GoogleFonts.abel(fontSize: 30)),
              SizedBox(height: 100),
            ]),
          ),
          drawer: Drawer(
              child: SingleChildScrollView(
                  child: Column(children: [
            HeaderDrawer(),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: MyHomePage(
                  title: 'MyHomePage',
                ),
                icon: Icon(Icons.person),
                texte: "Me connecter"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: GrilleImage(),
                icon: Icon(Icons.grid_3x3),
                texte: "GridView"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: ToDoList(), icon: Icon(Icons.list), texte: "To-do List"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: Convert(),
                icon: Icon(Icons.calculate),
                texte: "Convertisseur"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: Fb(), icon: Icon(Icons.facebook), texte: "Facebook"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: Quizz(), icon: Icon(Icons.quiz), texte: "Quiz"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: Xylophone(),
                icon: Icon(Icons.gamepad),
                texte: "Xylo_Game"),
            SizedBox(
              height: 15,
            ),
            BodyDrawerList(
                lyen: iindex(), icon: Icon(Icons.abc), texte: "section 19"),
                BodyDrawerList(
                lyen: douze(),
                icon: Icon(Icons.color_lens),
                texte: "Section 12"),
            SizedBox(
              height: 15,
            ),
            
            BodyDrawerList(lyen: QWIZ(), icon: Icon(Icons.question_answer), texte: "Le Questionnaire"),
            SizedBox(
              height: 15,
            ),
            BodyDrawerList(lyen: QWIZ(), icon: Icon(Icons.question_answer), texte: "Le Questionnaire"),

            SizedBox(height: 180),
          ]))),
        ));
  }
}

/* class Home extends StatelessWidget {
  Home({super.key});




   Switch(
                  value: _switch,
                  onChanged: (_newcolor) {
                    setState() {
                      _switch = _newcolor;
                    }
                  })

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          /*  Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  hintText: "audeadje5@gmail.com",
                ),
              )), */

          Text("Bienvenue dans mon application",
              style: GoogleFonts.abel(fontSize: 30)),

          SizedBox(height: 100),

          //Image.asset("")
        ]),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: [
            HeaderDrawer(),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: MyHomePage(
                  title: 'MyHomePage',
                ),
                icon: Icon(Icons.person),
                texte: "Me connecter"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: GrilleImage(),
                icon: Icon(Icons.grid_3x3),
                texte: "GridView"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: ToDoList(), icon: Icon(Icons.list), texte: "To-do List"),
            SizedBox(height: 15),
            BodyDrawerList(
                lyen: Convert(),
                icon: Icon(Icons.calculate),
                texte: "Convertisseur"),
            SizedBox(height: 180),
            // BodyDrawerList(lyen: exit(), icon: Icon(Icons.logout_outlined), texte: "Déconnexion")
            // InkWell(
            /*  onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Convert()));
              }, */
            /*  child: BodyDrawerList(
                "Me contacter",
                Icons.person,
              ),
            ),
            SizedBox(height: 15), */
            /*  BodyDrawerList("Facebook", Icons.facebook, icon: "facebook",),
            SizedBox(height: 15),
            BodyDrawerList("GridView", Icons.grid_3x3),
            SizedBox(height: 15),
            BodyDrawerList("Convertisseur", Icons.calculate),
            SizedBox(height: 15),
            BodyDrawerList("To-do List", Icons.list),
            SizedBox(height: 180),
            BodyDrawerList("Déconnexion", Icons.logout_outlined), */
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Column(
            children: [
              Icon(Icons.light_mode),
              Switch(
                  value: _switch,
                  onChanged: (_newcolor) {
                    setState() {
                      _switch = _newcolor;
                    }
                  })
            ],
          )),
    );
  }

/*   BodyDrawerList(String texte, IconData icon,) {
    return GestureDetector(
       // onTap: () => launch(link),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 40),
          Text(texte, style: GoogleFonts.kurale(fontSize: 30)),
        ],
      ),
    );
  } */
}
 */