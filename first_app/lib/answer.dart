import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.orange, onPrimary: Colors.white, elevation: 100),
        child: Text(answerText),
        onPressed: () {
          // ignore: unnecessary_statements
          selectHandler();
        },
      ),
    );
  }
}
