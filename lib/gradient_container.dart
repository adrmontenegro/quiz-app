import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {required this.content, required this.gradientColors, super.key});

  const GradientContainer.home({required this.content, super.key})
      : gradientColors = const [
          Color.fromARGB(255, 54, 0, 153),
          Color.fromARGB(255, 50, 0, 92)
        ];

  final List<Color> gradientColors;
  final Widget? content;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
            colors: gradientColors, center: Alignment.center, radius: 0.9),
      ),
      child: content,
    );
  }
}
