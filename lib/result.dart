import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'you did it!' + ', your score is: ' + this.resultScore.toString(),
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetQuiz, child: Text('restart!')),
      ],
    ));
  }
}
