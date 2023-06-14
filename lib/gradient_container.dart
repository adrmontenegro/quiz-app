import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required colors, super.key})
      : gradientColors = colors;

  const GradientContainer.home({super.key})
      : gradientColors = const [
          Color.fromARGB(255, 15, 0, 153),
          Color.fromARGB(255, 50, 0, 92)
        ];

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
            colors: gradientColors, center: Alignment.center, radius: 0.9),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
          ),
          const SizedBox(height: 50),
          const StyledText.title(text: "Learn Flutter the fun way!"),
          const SizedBox(height: 50),
          CustomButton(onPressed: startQuiz, 
          text: const StyledText.button(text: "Start Quiz"))
        ],
      )),
    );
  }

  void startQuiz() {
    print("Starting quiz...");
  }
}
