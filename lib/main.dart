import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer.home(content: StartScreen())
    ),
  ));
} 