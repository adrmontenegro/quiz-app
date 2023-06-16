import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/styled_text.dart';

const logoAsset = "assets/images/quiz-logo.png";
const title = "Learn Flutter the fun way!";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuizFunction, {super.key});

  final void Function() startQuizFunction;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          logoAsset,
          width: 250,
          color: const Color.fromARGB(143, 255, 255, 255),
        ),
        const SizedBox(height: 50),
        StyledText.title(text: title),
        const SizedBox(height: 50),
        CustomButton.rightIcon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuizFunction,
            text: const StyledText.button(text: "Start Quiz"))
      ],
    ));
  }

  void startQuiz() {
    print("Starting quiz...");
  }
}
