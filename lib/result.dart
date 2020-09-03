import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() _onRestartQuiz;

  Result(this.score, this._onRestartQuiz);

  String get finalScore {
    if (score < 8)
      return 'Congratulations!!';
    else if (score < 12)
      return 'You are good!!';
    else if (score < 16)
      return 'You are the best!!';
    else
      return 'You are a Jedi!!!!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Text(
          finalScore,
          style: TextStyle(fontSize: 28),
        )),
        FlatButton(
            child: Text('Restart?'),
            textColor: Colors.blue,
            onPressed: _onRestartQuiz)
      ],
    );
  }
}
