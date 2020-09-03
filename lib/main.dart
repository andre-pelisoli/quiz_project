import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_project/quiz.dart';
import 'package:quiz_project/result.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedAnswer = 0;
  var _finalScore = 0;
  final _questions = const [
    {
      'text': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'text': 'What is your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Frog', 'score': 4},
        {'text': 'Cat', 'score': 2},
        {'text': 'Lion', 'score': 9},
      ]
    }
  ];

  void _answer(int score) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedAnswer++;
        _finalScore += score;
      });
    }
    print(_selectedAnswer);
  }

  void _restartQuiz() {
    setState(() {
      _selectedAnswer = 0;
      _finalScore = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedAnswer < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: hasSelectedQuestion
          ? Quiz(
              questions: _questions,
              selectedAnswer: _selectedAnswer,
              answer: _answer,
            )
          : Result(_finalScore, _restartQuiz),
    ));
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
