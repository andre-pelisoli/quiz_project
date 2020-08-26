import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_project/answer.dart';
import 'package:quiz_project/question.dart';

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
          Question(questions[_selectedAnswer]),
          Answer('Answer 1', _answer),
          Answer('Answer 2', _answer),
          Answer('Answer 3', _answer)
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
