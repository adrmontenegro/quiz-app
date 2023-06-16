import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle title =
    GoogleFonts.kanit(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold
    );

const TextStyle button =
    TextStyle(color: Colors.white,  
    fontSize: 15);

TextStyle question =
    GoogleFonts.kanit(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold
    );

TextStyle resultQuestion =
    GoogleFonts.kanit(
      fontWeight: FontWeight.bold,
      fontSize: 18
    );

TextStyle resultAnswer =
    GoogleFonts.roboto(
      fontSize: 14
    );

    
TextStyle resultIndex =
    GoogleFonts.roboto(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );

class StyledText extends StatelessWidget {
  const StyledText(
      {required this.text,
      required this.color,
      this.style = const TextStyle(),
      super.key});

  StyledText.title({required this.text, super.key})
      : color = Colors.white,
        style = title;

  const StyledText.button({required this.text, super.key})
      : color = Colors.white,
        style = button;

  StyledText.question({required this.text, super.key})
      : color = Colors.white,
        style = question;

  StyledText.resultQuestion({required this.text, super.key})
      : color = const Color.fromARGB(255, 253, 207, 249),
        style = resultQuestion;

  StyledText.resultIndex({required this.text, super.key})
      : color = const Color.fromARGB(255, 58, 58, 58),
        style = resultIndex;

  StyledText.resultAnswer({required this.text, required this.color, super.key})
      : style = resultAnswer;

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
