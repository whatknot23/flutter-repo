import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function questionAnswered;
  final List<Map<String, Object>> questions;
  final int index;

  Quiz(this.questionAnswered, this.questions, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(
        questions[index]['question'] as String,
      ),
      ...(questions[index]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => questionAnswered(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}
