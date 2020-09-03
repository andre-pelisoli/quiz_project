import 'package:flutter/cupertino.dart';
import 'package:quiz_project/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedAnswer;
  final void Function(int) answer;

  Quiz(
      {@required this.questions,
      @required this.selectedAnswer,
      @required this.answer});

  bool get hasSelectedQuestion {
    return selectedAnswer < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        hasSelectedQuestion ? questions[selectedAnswer]['answers'] : null;

    return Column(children: <Widget>[
      Question(questions[selectedAnswer]['text']),
      ...answers
          .map((ans) => Answer(ans['text'], () => answer(ans['score'])))
          .toList(),
    ]);
  }
}
