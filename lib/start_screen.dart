import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(50, 252, 251, 251),
          ),
          /*Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
          ),*/
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Learn Flutter the Fun Way !",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 21, 12, 12),
              textStyle: const TextStyle(fontSize: 16),
              padding: const EdgeInsets.all(15),
            ),
            icon: const Icon(Icons.play_arrow_outlined),
            label: const Text("Start Quiz!"),
          ),
        ],
      ),
    );
  }
}
