import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/answer_button.dart';
import 'package:flutter_basic_quiz_app/data/questions.dart';
import 'package:flutter_basic_quiz_app/models/quiz_questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var cureentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      cureentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[cureentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(null,
                  answerText: answer, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
