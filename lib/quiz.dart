import 'package:flutter/material.dart';
import 'package:quizz_app/question_screen.dart';

import 'home.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      initialRoute:  '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/questionScreen': (ctx) => const QuestionScreen(),
      },
    );
  }
}