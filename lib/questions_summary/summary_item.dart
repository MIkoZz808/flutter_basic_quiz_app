import 'package:flutter/material.dart';

import 'package:flutter_basic_quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({Key? key, required this.data}) : super(key: key);

  final Map<String, Object> data;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        QuestionIdentifier(
            questionIndex: (data['question_index'] as int) + 1,
            isCorrect: data['user_answer'] == data['correct_answer']),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data['question'] as String,
                  style: const TextStyle(color: Colors.white, fontSize: 16)),
              const SizedBox(height: 5),
              Text(data['user_answer'] as String,
                  style:
                      const TextStyle(color: Color.fromARGB(255, 227, 73, 251))),
              Text(data['correct_answer'] as String,
                  style:
                      const TextStyle(color: Color.fromARGB(255, 74, 162, 234))),
            ],
          ),
        ),
      ]),
    );
  }
}
