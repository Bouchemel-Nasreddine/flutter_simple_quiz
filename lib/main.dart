import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'answer': 'Red', 'score': 6},
        {'answer': 'Black', 'score': 10},
        {'answer': 'Blue', 'score': 4},
        {'answer': 'Green', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'answer': 'Dog', 'score': 6},
        {'answer': 'Lion', 'score': 10},
        {'answer': 'Panda', 'score': 4},
        {'answer': 'Rabbit', 'score': 2}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'answer': 'Max', 'score': 1},
        {'answer': 'Max', 'score': 1},
        {'answer': 'Max', 'score': 1},
        {'answer': 'Max', 'score': 1},
      ]
    },
  ];

  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });
    _totalScore += score;
    print('answer chosen!');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}
