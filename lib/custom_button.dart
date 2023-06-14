import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';


class CustomButton extends StatelessWidget {

  const CustomButton ({required this.onPressed, required this.text,
  super.key});
  
  final VoidCallback onPressed;
  final StyledText text;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPressed, 
      child: text);
  }
   
}