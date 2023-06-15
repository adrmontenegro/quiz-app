import 'package:flutter/material.dart';
import 'package:quiz_app/models/answered_question.dart';
import 'package:quiz_app/question_result.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary({super.key, required this.answeredQuestions});

  final List<AnsweredQuestion> answeredQuestions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: answeredQuestions.map((data) {
            return QuestionResult(answeredQuestion: data);
          }).toList(),
        ),
      ),
    );
  }
}
