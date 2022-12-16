import 'package:flutter/material.dart';
import 'package:flutter_application_1/question.dart';

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
  void answerQuestions() {
    print('Answering questions!');
  }

  var _currentIndex = 0;
  void _displayNextQuestion() {
    setState(() {
      _currentIndex = _currentIndex + 1;
    });
    print(_currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite animal?'
    ];

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      backgroundColor: Color.fromARGB(255, 56, 228, 176),
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      backgroundColor: Color.fromARGB(255, 228, 82, 56),
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
        body: Column(children: [
          const SizedBox(height: 20),
          Question(questions[_currentIndex]),
          const SizedBox(width: 20),
          ElevatedButton(
            // Anonymous function
            onPressed: _displayNextQuestion,
            style: raisedButtonStyle2,
            child: Text('Next Question'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            // Anonymous function
            onPressed: () {
              print('Answering questions 222!');
            },
            style: raisedButtonStyle,
            child: Text('Answer 1'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: answerQuestions,
            style: raisedButtonStyle,
            child: Text('Answer 2'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: answerQuestions,
            style: raisedButtonStyle,
            child: Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
