import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer({ required this.selectHandler, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
        ),
        child: Text(answer),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
