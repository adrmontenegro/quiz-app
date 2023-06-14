import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

const buttonColor = Color.fromARGB(255, 152, 193, 255);

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.label, required this.onPressed, super.key});

  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        minimumSize: const Size(200, 35),
      ),
      icon: const Icon(Icons.api_rounded,
          color: Color.fromARGB(202, 255, 255, 255)),
      label: StyledText.button(text: label),
    );
  }
}
