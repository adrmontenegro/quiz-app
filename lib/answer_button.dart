import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

const buttonColor = Color.fromARGB(255, 83, 35, 196);

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.label, required this.onPressed, super.key});

  final String label;
  final void Function(String answer) onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {onPressed(label);},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        fixedSize: const Size(250, 40),
        alignment: Alignment.centerLeft,
      ),
      icon: const Icon(Icons.api_rounded,
          color: Color.fromARGB(202, 255, 255, 255)),
      label: StyledText.button(text: label),
    );
  }
}
