import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  // If [activeScreen] was a Widget variable, this could be used to initialize
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer.home(
            content: activeScreen == "start-screen"
                ? StartScreen((switchScreen))
                : const QuestionScreen()),
      ),
    );
  }
}
