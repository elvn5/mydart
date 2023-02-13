import 'package:flutter/cupertino.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function selectHandler;
  final List<Map<String, Object>> questions;

  Quiz({required this.questions, required, required this.questionIndex, required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText: questions[questionIndex]["question"] as String),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(selectHandler: () => selectHandler(answer["score"]), answer: answer["text"] as String);
        }).toList()
      ],
    );
  }
}