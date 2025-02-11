import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(Key? key, {required this.answerText, required this.onTap})
      : super(key: key);

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          primary: Color.fromARGB(255, 33, 1, 95),
          fixedSize: const Size(200, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
