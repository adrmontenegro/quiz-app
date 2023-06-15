import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        currentQuestionIndex = 0;
      }
    });
  }

  @override
  Widget build(context) {
    QuizQuestion question = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(45),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StyledText.title(text: question.question),
              const SizedBox(height: 50),

              //Mapping options using "spreading"('...' prexif)
              ...question
                  .getShuffledOptions()
                  .map((o) => AnswerButton(label: o, onPressed: answerQuestion))

              // Mapping options using for cicle
              // for (int i = 0; i < question.options.length; i++)
              //   AnswerButton(label: question.options[i], onPressed: () {}),
            ]),
      ),
    );
  }
}
