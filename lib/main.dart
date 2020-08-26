import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedAnswer = 0;

  void _answer() {
    setState(() {
      _selectedAnswer++;
    });
    print(_selectedAnswer);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(questions[_selectedAnswer]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answer,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _answer,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: _answer,
          )
        ],
      ),
    ));
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
