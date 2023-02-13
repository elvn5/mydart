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

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "question": "What's is your favourite color?",
        "answers": ["Black", "Green", "White", "Red"]
      },
      {
        "question": "What's your favourite animal?",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
      },
      {
        "question": "Who's your favourite instructor?",
        "answers": [
          "Max",
          "Max",
          "Max",
          "Max",
        ]
      }
    ];
    
    var answers = (questions[_questionIndex]["answers"] as List<String>).map((answer) {
      return Answer(selectHandler: _answerQuestion, answer: answer);
    }).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello Dart!")),
        body: Column(
          children: <Widget>[
            Question(questionText: questions[_questionIndex]["question"] as String),
            ...answers
          ],
        ),
      ),
    );
  }
}
