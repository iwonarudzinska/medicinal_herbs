import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);
  String get resultPhrase {
    String resultText = 'You did it! 💪\n\nYou answered all the questions correctly!\n\nCONGRATULATIONS 🎉';

    if (resultScore <= 0) {
      resultText = 'You answered 0 questions correctly 😥';
    } else if (resultScore <= 1) {
      resultText = 'You answered 1 questions correctly 🙁';
    } else if (resultScore <= 2) {
      resultText = 'You answered 2 questions correctly 😕';
    } else if (resultScore <= 3) {
      resultText = 'You answered 3 questions correctly 😊';
    // } else {
    //   resultText = 'You are awesome and innocent!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text('Restart Quiz!'),
            style: TextButton.styleFrom(primary: Colors.pink),
          ),
        ],
      ),
    );
  }
}
