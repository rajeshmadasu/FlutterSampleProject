import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //  named functions
  String? selectedAnswer;

  static const _questions = [
    {
      'questionText': 'What\'s your favorite colour?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 9},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 1},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Tiger', 'score': 3},
        {'text': 'Peocock', 'score': 2},
      ],
    },
  ];
  var _currentIndex = 0;
  var _totalScore = 0;
  void _answer_questions(int score) {
    _totalScore += score;

    setState(() {
      _currentIndex = _currentIndex + 1;
    });
    print(_currentIndex);
    if (_currentIndex < _questions.length) {
      print('We have more _questions!');
    }

    print("Total score" + _totalScore.toString());
  }

  void _resetQuiz() {
    setState(() {
      _currentIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      backgroundColor: Color.fromARGB(255, 56, 228, 176),
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _currentIndex < _questions.length
            ? Quiz(
                answerQuestions: _answer_questions,
                questions: _questions,
                questionIndex: _currentIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
