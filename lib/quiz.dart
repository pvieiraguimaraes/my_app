import 'package:flutter/material.dart';
import 'package:my_app/answer.dart';
import 'package:my_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback doIt;

  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.doIt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(
            answerText: answer,
            onPressed: doIt,
          );
        }),
      ],
    );
  }
}
