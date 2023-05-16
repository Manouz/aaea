// import 'package:flutter/material.dart';

// class MyDrawer extends StatefulWidget {
//   const MyDrawer({super.key, required this.indexx});
//   final int indexx;

//   @override
//   State<MyDrawer> createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<MyDrawer> {

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         child: ListView.builder(
//             itemCount: Q.length,
//             itemBuilder: ((context, index) {
//               return ListTile(
//                   onTap: () {
//                     setState(() {
//                       widget.indexx = Q.indexOf(Q[index]);
//                       Navigator.pop(context);
//                     });
//                   },
//                   title: Text("Partie ${Q[index].niveau}"));
//             })),
//       ),
//     );
//   }
// }
