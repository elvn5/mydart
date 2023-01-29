import "package:flutter/material.dart";


class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
        ),
        child: Text("Some text of button"),
        onPressed: selectHandler,
      ),
    );
  }
}