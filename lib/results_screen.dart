import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app/data/questions.dart';
import 'package:flutter_basic_quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key, required this.chosenAnswers, required this.onRestart})
      : super(key: key);

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summaryData;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          Text(
            'You have answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(height: 20),
          QuestionsSummary(summaryData),
          const SizedBox(height: 20),
          TextButton.icon(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: onRestart,
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 33, 1, 95),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
              label:
                  const Text('Restart', style: TextStyle(color: Colors.white))),
        ]),
      ),
    );
  }
}
