import 'package:flutter/material.dart';

const TextStyle title =
    TextStyle(color: Colors.white, 
    fontWeight: FontWeight.bold, 
    fontSize: 25);

const TextStyle button =
    TextStyle(color: Colors.white,  
    fontSize: 15);

class StyledText extends StatelessWidget {
  const StyledText(
      {required this.text,
      required this.color,
      this.style = const TextStyle(),
      super.key});

  const StyledText.title({required this.text, super.key})
      : color = Colors.white,
        style = title;

  const StyledText.button({required this.text, super.key})
      : color = Colors.white,
        style = button;

  final String text;
  final Color color;
  final TextStyle style;

  @override
  Widget build(context) {
    return Text(
      text,
      style: style.copyWith(color: color),
    );
  }
}
