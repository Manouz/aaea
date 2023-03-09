import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BodyDrawerList extends StatelessWidget {
  const BodyDrawerList({super.key, required this.lyen,required this.icon,required this.texte});
  final Widget lyen;
  final Widget icon;
  final String texte;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) => lyen));
      },
       child: Row(
        children: [
          icon,
          SizedBox(width: 40),
          Text(texte, style: GoogleFonts.kurale(fontSize: 30)),
        ],
      ),
    );
  }
}

class BodyToDoList extends StatefulWidget {
  const BodyToDoList({super.key});

  @override
  State<BodyToDoList> createState() => _BodyToDoListState();
}

class _BodyToDoListState extends State<BodyToDoList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(child: ListTile() )
        ],
      ),
    );
  }
}
