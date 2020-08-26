import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onAnswerSelected;

  Answer(this.text, this.onAnswerSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(text),
        onPressed: onAnswerSelected,
        textColor: Colors.white,
        color: Colors.blue,
      ),
    );
  }
}
