//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource("note$num.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Xylo_Game"),
        ),
        body: SafeArea(
          child: Column(children: [
            TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                )),  TextButton(
                onPressed: () {
                  playSound(2);
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                )),  TextButton(
                onPressed: () {
                  playSound(3);
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                )),  TextButton(
                onPressed: () {
                  playSound(4);
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                )),





          ]),

          // children: [
          //   Row(
          //     children: [
          //       GestureDetector(
          //         child: Container(
          //             child: Column(children: [
          //           Icon(Icons.female),
          //           Text("Female"),
          //         ])),
          //       ),
          //       GestureDetector(
          //         child: Container(
          //             child: Column(children: [
          //           Icon(Icons.female),
          //           Text("Female"),
          //         ])),
          //       ),
          //     ],
          //   ),
          //   SizedBox(width: 10),
          //   Container(),
          //   SizedBox(
          //     height: 50,
          //   ),
          //   Container(),
          //   Row(),
          //   SizedBox(height: 50),
          //   Center(
          //     child: Container(
          //         width: double.infinity,
          //         height: double.infinity,
          //         decoration:
          //             BoxDecoration(color: Color.fromARGB(255, 235, 21, 85)),
          //         child: InkWell(
          //             onTap: () => Navigator.push(context,
          //                 MaterialPageRoute(builder: (builder) => Reslts())),
          //             child: Text('CALCULATE'))),
          //   )
          // ],
        ));
  }
}

