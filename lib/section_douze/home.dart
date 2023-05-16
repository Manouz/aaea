import 'package:flutter/material.dart';

class douze extends StatefulWidget {
  const douze({super.key});

  @override
  State<douze> createState() => _douzeState();
}

class _douzeState extends State<douze> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    //var backgroundColors;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: Text("Section douze")),
      body: SafeArea(
          child: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "data",
              style: TextStyle(color: textColor),
            ),
          ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: update,
        child: Icon(Icons.color_lens),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }

// cette fonction peu être mise directement  dans le onpressed du floatingactionbutton
  update() {
    setState(() {
      backgroundColor =
          (backgroundColor == Colors.white) ? Colors.black : Colors.white;
      textColor = (textColor == Colors.black) ? Colors.white : Colors.black;
    });
  }
}
