import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/styled_text.dart';

const logoAsset = "assets/images/quiz-logo.png";
const title = "Learn Flutter the fun way!";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
        // Opacity(
        //     opacity: 0.6,
        //     child: Image.asset(
        //       logoAsset,
        //       width: 250,
        //     )),
        const SizedBox(height: 50),
        const StyledText.title(text: title),
        const SizedBox(height: 50),
        CustomButton(
            onPressed: startQuiz,
            text: const StyledText.button(text: "Start Quiz"))
      ],
    ));
  }

  void startQuiz() {
    print("Starting quiz...");
  }
}
