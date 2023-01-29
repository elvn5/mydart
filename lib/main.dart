import 'package:flutter/material.dart';

import './question.dart';
import "./answer.dart";

void main() => runApp(Appka());

class Appka extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AppkaState();
  }
}

class _AppkaState extends State<Appka> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's is your favourite color?",
      "What's your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello Dart!")),
        body: Column(children: <Widget>[
          Question(questionText: questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],),
      ),
    );
  }
}
