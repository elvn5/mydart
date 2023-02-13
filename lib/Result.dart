import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get getText {
    var resultText = "You did it!";

    if(resultScore <= 9) {
      resultText = "You are awesome!";
    } else if(resultScore <= 12) {
      resultText = "Pretty likeable";
    }
    print(resultScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(getText, style: TextStyle(fontSize: 38),));
  }
}