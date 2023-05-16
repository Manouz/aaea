import 'package:aaea/section_douze_ANG/deuxiemepage.dart';
import 'package:flutter/material.dart';

class SectionDouzeAnglais extends StatefulWidget {
  const SectionDouzeAnglais({super.key});

  @override
  State<SectionDouzeAnglais> createState() => _SectionDouzeAnglaisState();
}

class _SectionDouzeAnglaisState extends State<SectionDouzeAnglais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  child: Container(
                      child: Column(children: [
                    Icon(Icons.female),
                    Text("Female"),
                  ])),
                ),
                GestureDetector(
                  child: Container(
                      child: Column(children: [
                    Icon(Icons.female),
                    Text("Female"),
                  ])),
                ),
              ],
            ),
            SizedBox(width: 10),
            Container(),
            SizedBox(
              height: 50,
            ),
            Container(),
            Row(),
            SizedBox(height: 50),
            Center(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 235, 21, 85)),
                  child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Reslts())),
                      child: Text('CALCULATE'))),
            )
          ],
        ));
  }
}
