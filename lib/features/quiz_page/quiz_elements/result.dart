import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);
  String get resultPhrase {
    String resultText =
        'You did it! 💪\n\nYou answered all the questions correctly!\n\nCONGRATULATIONS 🎉';

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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.farmersalmanac.com/wp-content/uploads/2010/10/herbs-table_as460759168.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black45,
            BlendMode.darken,
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: resetHandler,
              child: const Text(
                'Restart Quiz!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              style: TextButton.styleFrom(primary: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}
