import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {Key? key, required this.questionIndex, required this.isCorrect})
      : super(key: key);

  final bool isCorrect;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      child: Text(questionIndex.toString()),
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 74, 162, 234)
            : const Color.fromARGB(255, 227, 73, 251),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
