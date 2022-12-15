import 'package:flutter/material.dart';
import 'package:my_app/quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final questions = [
    {
      'questionText': 'What\'s your name?',
      'answers': ['Pedro', 'Max', 'John']
    },
    {
      'questionText': 'What\'s your body fat number?',
      'answers': ['30%', '10%', '24%']
    },
  ];

  _doIt() => {
        if (_questionIndex < questions.length)
          {
            setState(() {
              _questionIndex++;
            })
          }
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: _questionIndex < questions.length
          ? Quiz(
              questions: questions,
              doIt: _doIt,
              questionIndex: _questionIndex,
            )
          : const Center(
              child: Text('You did it'),
            ),
    ));
  }
}
