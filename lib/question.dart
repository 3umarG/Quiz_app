import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String queastionText;
  Question(
    this.queastionText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        queastionText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.red,
        ),
      ),
    );
  }
}
