import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const TextStyle title =
    TextStyle(color: Colors.white, 
    fontWeight: FontWeight.bold, 
    fontSize: 25);

const TextStyle button =
    TextStyle(color: Colors.white,  
    fontSize: 15);

TextStyle question =
    GoogleFonts.kanit(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold
    );

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

  StyledText.question({required this.text, super.key})
      : color = Colors.white,
        style = question;

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
