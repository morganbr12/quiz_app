import 'package:flutter/material.dart';
import 'package:quizz_app/question_screen.dart';

import 'home.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var activeScreen = 'start-screen';

  void startQuiz() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget firstScreen  = HomePage(startQuiz: startQuiz);

    if (activeScreen == 'question-screen') {
      firstScreen = const QuestionScreen();
    }

    return MaterialApp(
      title: 'Quiz App',
     home: firstScreen,
    );
  }
}