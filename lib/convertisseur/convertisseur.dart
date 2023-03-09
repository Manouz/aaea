import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
/* import 'package:profilscreen/gridScreen.dart';
import 'button.dart'; */

class Convert extends StatelessWidget {
  const Convert({super.key});
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        
      ),
      body:const Padding(
        padding: EdgeInsets.all(3),
        child: Column(children: [

        ],),
      ),
    );
    /* return Scaffold(
      body: Center(
        child: Row(
          children: [
            GridView.builder(
              padding: EdgeInsets.only(top: 100),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 0.0),
              itemBuilder: (context, index) {
                return Container(
                  width: 10,
                  height: 70,
                  color: Colors.blue,
                );
              },
            ),
            /*  Container(
              padding: EdgeInsets.only(top: 10),
              child: NextButton(lyen: GrilleImage()),
            ), */
          ],
        ),
      ),
    ); */
  }
}
