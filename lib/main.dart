import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return const Quiz();
  }
}
