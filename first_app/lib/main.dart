import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;

  final _questions = const [
    {
      'question': "Pick your favourite one.",
      'answers': [
        {'text': "Friends", 'score': 3},
        {'text': "Soccer", 'score': 2},
        {'text': "Food", 'score': 5}
      ]
    },
    {
      'question': "Pick your favourite colour.",
      'answers': [
        {'text': "Black", 'score': 5},
        {'text': "blue", 'score': 2},
        {'text': "Pink", 'score': 7},
      ]
    },
    {
      'question': "Pick your favourite place.",
      'answers': [
        {'text': "Home", 'score': 5},
        {'text': "Playground", 'score': 2},
        {'text': "Cafe", 'score': 6},
      ]
    },
  ];

  var _totalScore = 0;

  void _questionAnswered(int score) {
    if (index < _questions.length) {
      _totalScore += score;

      setState(() {
        index++;
      });
      print(index);
    }
  }

  void reset() {
    setState(() {
      _totalScore = 0;
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          title: Text("Okay! let's go..."),
        ),
        body: index < _questions.length
            ? Quiz(_questionAnswered, _questions, index)
            : Result(_totalScore, reset),
      ),
    );
  }
}
