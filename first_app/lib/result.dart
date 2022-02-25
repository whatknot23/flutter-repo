import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  var resultPhrase;
  String get resultType {
    if (resultScore <= 10) {
      resultPhrase = "You are good";
    } else if (resultScore <= 15) {
      resultPhrase = "You are average";
    } else {
      resultPhrase = "You are bad";
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultType,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: () {
            resetHandler();
          },
          child: Text("Restart"),
          style: TextButton.styleFrom(primary: Colors.redAccent),
        ),
      ],
    ));
  }
}
