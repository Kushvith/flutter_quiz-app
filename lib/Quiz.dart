import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int _questionIndex;
  final VoidCallback _answerQuestion;
   Quiz(this.questions,this._answerQuestion,this._questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_questionIndex]['questionText'] as String),
        ...(questions[_questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(_answerQuestion, answer);
        })
      ],
    );
  }
}
