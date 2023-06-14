import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';


class CustomButton extends StatelessWidget {

  const CustomButton ({required this.onPressed, required this.text,
  super.key});
  
  final VoidCallback onPressed;
  final StyledText text;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: onPressed, 
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.deepPurple
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: text);
  }
   
}