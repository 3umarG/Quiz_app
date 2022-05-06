import 'package:flutter/material.dart';
import 'package:new_2/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["question"] as String),
        // Maping & Spread Operator
        ...(questions[questionIndex]["answers"] as List).map((answer) {
          return Answer(
            () => answerQuestion(answer["score"]),
            answer["text"],
          );
        }).toList(),

        // OR ---
        //      |
        //      |
        //      V

        // Answer(_answerQuestion, questions[_questionIndex]["answers"][0]),
        // Answer(_answerQuestion, questions[_questionIndex]["answers"][1]),
        // Answer(_answerQuestion, questions[_questionIndex]["answers"][2]),
        // Answer(_answerQuestion, questions[_questionIndex]["answers"][3]),
      ],
    );
  }
}
