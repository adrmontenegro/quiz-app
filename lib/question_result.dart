import 'package:flutter/material.dart';
import 'package:quiz_app/models/answered_question.dart';
import 'package:quiz_app/styled_text.dart';

const Color correct = Color.fromARGB(255, 144, 238, 214);
const Color incorrect = Color.fromARGB(255, 255, 131, 228);

class QuestionResult extends StatelessWidget {
  const QuestionResult({required this.answeredQuestion, super.key});

  final AnsweredQuestion answeredQuestion;

  @override
  Widget build(BuildContext context) {
    int index = answeredQuestion.index + 1;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 3, color: const Color.fromARGB(50, 0, 0, 0)),
                  color: answeredQuestion.isOk ? correct : incorrect),
              width: 30,
              height: 30,
              child:
                  Center(child: StyledText.resultIndex(text: index.toString()))),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledText.resultQuestion(text: answeredQuestion.question),
                const SizedBox(
                  height: 5,
                ),
                if (!answeredQuestion.isOk)
                  StyledText.resultAnswer(
                      text: answeredQuestion.selectedAnswer, color: incorrect),
                StyledText.resultAnswer(
                    text: answeredQuestion.correctAnswer, color: correct),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
