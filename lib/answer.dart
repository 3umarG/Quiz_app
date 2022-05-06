import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerFun;
  final String answerText;
  Answer(
    this.answerFun,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: ElevatedButton(
        onPressed: answerFun,
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
