import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Result.dart';
import 'package:flutter_complete_guide/quiz.dart';

void main() => runApp(Appka());

class Appka extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppkaState();
  }
}

class _AppkaState extends State<Appka> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        "question": "What's is your favourite color?",
        "answers": [
          {"text": "Black", "score": 1},
          {"text": "Green", "score": 1},
          {"text": "White", "score": 1},
        ]
      },
      {
        "question": "What's your favourite animal?",
        "answers": [
          {"text": "Rabbit", "score": 3},
          {"text": "Lion", "score": 3},
          {"text": "Wolf", "score": 4},
        ]
      },
      {
        "question": "Who's your favourite instructor?",
        "answers": [
          {"text": "Max", "score": 1},
          {"text": "Max", "score": 30},
          {"text": "Max", "score": 30},
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Hello Dart!")),
        body: _questionIndex < _questions.length ?
        Quiz(questions: _questions, questionIndex: _questionIndex, selectHandler: _answerQuestion)
            : Result(resultScore: _totalScore, resetHandler: resetQuiz,),)
    );
  }
}
