import 'package:flutter/material.dart';
import 'package:aaea/section_dix_neuf/index.dart';

class Details_Ville extends StatelessWidget {
  Details_Ville({super.key,required this.det_ville});
   final Det_Ville det_ville;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(det_ville.titre)),
      body: Center(
        child: Column(
          children: [Image.network(det_ville.sous_titre)],
        ),
      ),
    );
  }
}
