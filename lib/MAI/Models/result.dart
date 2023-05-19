import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;
  Result({required this.resultScore, required this.reset});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 9) {
      resultText = 'Tu peux mieux le faire !';
    } else if (resultScore >= 10 && resultScore <= 13) {
      resultText = 'Tu est brillant on le sais mais fait mieux !';
    } else if (resultScore >= 13 && resultScore <= 17) {
      resultText = 'Juste un peu pour être super meilleur !';
    } else {
      resultText = 'Tu est le super meilleur !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(/* "finiiiii!" */ resultPhrase),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: reset,
          child: Text("Reset Quiz !"),
        ),
        // ElevatedButton(onPressed: reset, child: Text("Reset Quiz !"))
      ],
    );
  }
}
