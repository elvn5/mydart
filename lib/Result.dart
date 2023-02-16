import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({ required this.resultScore, required this.resetHandler});

  String get getText {
    var resultText = "You did it!";

    if(resultScore <= 9) {
      resultText = "You are awesome!";
    } else if(resultScore <= 12) {
      resultText = "Pretty likeable";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: <Widget>[
        Text(
          getText,
          style: TextStyle(fontSize: 38),
          textAlign: TextAlign.center,),
        ElevatedButton(onPressed: ()=> resetHandler(), child:Text("Restart Quiz"))
      ],
    ));
  }
}