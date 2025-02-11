import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.activeScreen, {Key? key}) : super(key: key);

  final void Function() activeScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 200,
              height: 200,
              color: const Color.fromARGB(150, 255, 255, 255)),
          const SizedBox(height: 30),
            Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontSize: 30,
              fontWeight: FontWeight.bold,
              ),
            ),
            ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: activeScreen, // Call the function here
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white, side: const BorderSide(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
