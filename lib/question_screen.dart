import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  String question = "What are you doing?";

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledText.title(text:  question),
        ],
      ),
    );
  }
}
