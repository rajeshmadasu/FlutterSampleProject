import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.answerQuestions,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20),
      Question(questions[questionIndex]['questionText'] as String),
      const SizedBox(width: 20),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            selectedHandler: () => answerQuestions(answer['score']),
            answerText: answer['text'] as String);
      }).toList(),
    ]);
  }
}
