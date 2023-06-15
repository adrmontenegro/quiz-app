import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/models/answered_question.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/question_result.dart';
import 'package:quiz_app/result_summary.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.answers, super.key});

  final List<String> answers;

  List<AnsweredQuestion> summarizeAnswers() {
    List<AnsweredQuestion> summary = [];
    for (int i = 0; i < questions.length; i++) {
      QuizQuestion question = questions[i];
      String selectedAnswer = answers[i];
      summary.add(AnsweredQuestion(
          index: i,
          question: question.question,
          selectedAnswer: selectedAnswer,
          correctAnswer: question.options[0]));
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final List<AnsweredQuestion> answeredQuestions = summarizeAnswers();
    final int score = answeredQuestions.where((answer) => answer.isOk).length;
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StyledText.title(
                  text: "You answered $score out of ${questions.length} questions correctly!"),
              const SizedBox(
                height: 30,
              ),
              StyledText.question(text: "Questions answered:"),
              const SizedBox(
                height: 30,
              ),
              ResultSummary(answeredQuestions: answeredQuestions),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                  onPressed: () {},
                  text: const StyledText.button(text: "Restart Quiz...")),
            ],
          ),
        ));
  }
}
