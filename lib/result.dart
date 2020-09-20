import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int answerTotal;
  final Function resetQuiz;

  Result(this.answerTotal, this.resetQuiz);

  String get resultTextChooser {
    var resultText = 'You dit it!';
    if (answerTotal > 5) {
      resultText = 'You are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultTextChooser,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz'),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
