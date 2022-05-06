import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  final VoidCallback resetFunction;

  const Result({required this.finalResult, required this.resetFunction});

  String get resultPhrase {
    String textResult;
    if (finalResult <= 40) {
      textResult = "You are so BAD !!!";
    } else if (finalResult <= 80) {
      textResult = "You are Good !!!";
    } else {
      textResult = "You are Perfect ...!!!";
    }
    return textResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            "The End !!!",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 35,
              color: Colors.grey.shade700,
            ),
          ),
          Text(
            "Result is = $finalResult",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 45,
              color: Colors.redAccent,
              fontWeight: FontWeight.w900,
            ),
          ),
          TextButton(
            onPressed: resetFunction,
            child: const Text(
              "Reset the Quiz",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                backgroundColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
