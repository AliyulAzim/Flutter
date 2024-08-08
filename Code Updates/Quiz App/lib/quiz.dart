import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';

import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
/*  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);  //In this case, it initializes the activeScreen variable with a StartScreen widget and sets up a callback function (switchScreen).
    super.initState();
}*/

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
  }


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 41, 42, 43), Colors.pink],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
