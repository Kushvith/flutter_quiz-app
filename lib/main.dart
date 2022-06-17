import 'package:flutter/material.dart';

import './Quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    const questions = [
      {
        'questionText': "loved fruits in this list",
        'answers': ["yellow", "green", "red"]
      },
      {
        'questionText': "loved animals in this list",
        'answers': ["rabbit", "lion", "tiger"]
      },
      {
        'questionText': "loved Ev two wheeler company in this list",
        'answers': ["hero", "ola", "simple"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions,_answerQuestion,_questionIndex)
            : Result(),
      ),
    );
  }
}
