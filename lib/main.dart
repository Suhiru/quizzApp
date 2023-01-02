import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
@override
class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("Question Index ${_questionIndex}");
  }

  var questions = [
    "First Question",
    "Second Question",
    "Third Question",
    "Fourth Question"
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions.elementAt(_questionIndex),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
