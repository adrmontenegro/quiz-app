import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/styled_text.dart';

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
      if (activeScreen == "start-screen") {
        activeScreen = "question-screen";
      } else {
        activeScreen = "start-screen";
      }
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "question-screen") {
      screenWidget = const QuestionScreen();
    }

    // Here we can modify the [screenWidget] using a ternary operation
    // var screenWidget = activeScreen == "start-screen"
    //     ? StartScreen((switchScreen))
    //     : const QuestionScreen();

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: activeScreen == "start-screen"
            ? null
            : ElevatedButton.icon(
                onPressed: switchScreen,
                icon: const Icon(Icons.arrow_back_rounded),
                label: const StyledText.button(text: "Back")),
        body: GradientContainer.home(content: screenWidget),
      ),
    );
  }
}
