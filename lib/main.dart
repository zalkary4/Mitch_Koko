import 'package:flutter/material.dart';
import 'package:mitch_koko/widgets/smooth_animated_button_press.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isButtonPressed = false;

  void buttonPressed() {
    setState(
      () {
        if (isButtonPressed == false) {
          isButtonPressed == true;
        } else if (isButtonPressed == true) {
          isButtonPressed == false;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: NeuButton(
            onTap: buttonPressed,
            isButtonPressed: isButtonPressed,
          ),
        ),
      ),
    );
  }
}
