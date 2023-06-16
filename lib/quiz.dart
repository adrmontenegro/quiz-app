import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  // If [activeScreen] was a Widget variable, this could be used to initialize
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      if (activeScreen == "start-screen") {
        activeScreen = "question-screen";
      } else {
        activeScreen = "start-screen";
      }
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = "start-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (questions.length == selectedAnswers.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget;

    switch (activeScreen) {
      case "question-screen":
        screenWidget = QuestionScreen(
          onSelectAnswer: chooseAnswer,
        );
        break;
      case "result-screen":
        screenWidget = ResultScreen(
          answers: selectedAnswers,
          restartFunction: restartQuiz,
        );
        break;
      default:
        screenWidget = StartScreen(switchScreen);
    }

    // Here we can modify the [screenWidget] using a ternary operation
    // var screenWidget = activeScreen == "start-screen"
    //     ? StartScreen((switchScreen))
    //     : const QuestionScreen();

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: activeScreen == "question-screen"
            ? ElevatedButton.icon(
                onPressed: switchScreen,
                icon: const Icon(Icons.arrow_back_rounded),
                label: const StyledText.button(text: "Back"),
              )
            : null,
        body: GradientContainer.home(content: screenWidget),
      ),
    );
  }
}
