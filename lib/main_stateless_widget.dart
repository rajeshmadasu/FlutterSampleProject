import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite animal?'
    ];

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Color.fromARGB(255, 56, 228, 176),
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Color.fromARGB(255, 228, 82, 56),
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
//  named functions
    void answerQuestions() {
      print('Answering questions!');
    }

    var currentIndex = 0;
    void displayNextQuestion() {
      currentIndex = currentIndex + 1;

      print(currentIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(children: [
          SizedBox(height: 20),
          Row(
            children: [
              Text(questions.elementAt(currentIndex)),
              SizedBox(width: 10),
              ElevatedButton(
                // Anonymous function
                onPressed: displayNextQuestion,
                child: Text('Next Question'),
                style: raisedButtonStyle2,
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            // Anonymous function
            onPressed: () {
              print('Answering questions 222!');
            },
            child: Text('Answer 1'),
            style: raisedButtonStyle,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: answerQuestions,
            child: Text('Answer 2'),
            style: raisedButtonStyle,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: answerQuestions,
            child: Text('Answer 3'),
            style: raisedButtonStyle,
          ),
        ]),
      ),
    );
  }
}
