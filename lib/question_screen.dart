import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  String question = "What are you doing?";

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText.title(text: question),
          const SizedBox(height: 50),
          AnswerButton(label: "option 1", onPressed: () {}),
          AnswerButton(label: "option 2", onPressed: () {}),
          AnswerButton(label: "option 3", onPressed: () {}),
        ],
      ),
    );
  }
}
