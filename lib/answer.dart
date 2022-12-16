import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String answerText;
  Answer({required this.selectedHandler, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectedHandler,
      ),
    );
  }
}
