import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  const Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'Your are awesome and innocent!';
    } else if (resultScore <= 8) {
      resultText = 'Pretty Likable!';
    } else {
      resultText = 'Your are ...strange';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
