import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.startQuiz, super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
            width: 200,
              color: Colors.white.withOpacity(0.7),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Learn Flutter for fun',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white
            ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
