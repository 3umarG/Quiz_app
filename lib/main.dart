import 'package:flutter/material.dart';
import 'package:new_2/question.dart';
import 'package:new_2/quiz.dart';
import 'package:new_2/result.dart';
import './answer.dart';

void main(List<String> args) {
  // ايه الابلكيشن الي عاوز تعمله run
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  // فايدة فانكشن ال create انها بترجعلي state كل مره بعمل فيها build للابلكيشن بتاعي
  // وال state الي انا حاططها MyAppState دي االي بيكون فيها الكود
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// Private Class
class _MyAppState extends State<MyApp> {
  // StatlessWidget is a Class that take a parm in Const.
  // So Any Class extend from it
  // Should Take a param. and pass to it
  int _questionIndex = 0;
  int _totalResult = 0;
  final _questions = const [
    {
      "question": "What's your Favourite Color ?",
      "answers": [
        {
          "text": "Red",
          "score": 40,
        },
        {
          "text": "Black",
          "score": 30,
        },
        {
          "text": "White",
          "score": 20,
        },
        {
          "text": "Blue",
          "score": 10,
        },
      ],
    },
    {
      "question": "What's your Favourite Country ?",
      "answers": [
        {
          "text": "Egypt",
          "score": 40,
        },
        {
          "text": "Kuwait",
          "score": 30,
        },
        {
          "text": "America",
          "score": 20,
        },
        {
          "text": "Germany",
          "score": 10,
        },
      ],
    },
    {
      "question": "What's your Favourite Team ?",
      "answers": [
        {
          "text": "Real Madrid",
          "score": 40,
        },
        {
          "text": "AlAhly",
          "score": 30,
        },
        {
          "text": "FCB",
          "score": 20,
        },
        {
          "text": "Zamalek",
          "score": 10,
        },
      ],
    },
    {
      "question": "What's your Favourite Section ?",
      "answers": [
        {
          "text": "CS",
          "score": 40,
        },
        {
          "text": "IS",
          "score": 30,
        },
        {
          "text": "IT",
          "score": 20,
        },
        {
          "text": "AI",
          "score": 10,
        },
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalResult += score;
    setState(() {
      _questionIndex++;
    });

    print("Answer Choosen");
    print(_questionIndex);
    print("The Result = $_totalResult");
  }

  void _resetQuiz() {
    setState(() {
      _totalResult = 0;
      _questionIndex = 0;
    });
  }

// Stateless Has Abstract Method we should
// OVERRIDE
  @override
  // Build Function :
  // To Return Your Widget
  // Most Imp. Function
  Widget build(BuildContext context) {
    // Convert to App that can Be RUN...!!
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "First Flutter App",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                finalResult: _totalResult,
                resetFunction: _resetQuiz,
              ),
      ),
    );
  }
}
