import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.onPressed,
      required this.text,
      required this.icon,
      required this.iconAlignment,
      super.key});

  const CustomButton.leftIcon(
      {required this.onPressed,
      required this.text,
      required this.icon,
      super.key})
      : iconAlignment = "left";

  const CustomButton.rightIcon(
      {required this.onPressed,
      required this.text,
      required this.icon,
      super.key})
      : iconAlignment = "right";

  final VoidCallback onPressed;
  final StyledText text;
  final Icon icon;
  final String iconAlignment;

  @override
  Widget build(context) {
    List<Widget> row = [
      iconAlignment == "left" ? icon : text,
      const SizedBox(
        width: 5,
      ),
      iconAlignment == "left" ? text : icon,
    ];
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(backgroundColor: Colors.deepPurple),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: row,
      ),
    );
  }
}
