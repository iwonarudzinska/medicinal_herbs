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
            const SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const CorrectAnswersPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'See correct answers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  style: TextButton.styleFrom(primary: Colors.pink),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CorrectAnswersPage extends StatelessWidget {
  const CorrectAnswersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 120, 28, 28),
                Color.fromARGB(255, 19, 100, 104),
                Color.fromARGB(255, 26, 118, 29),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        title: const Text('CORRECT ANSWERS'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v546batch3-mynt-34-badgewatercolor_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=89288ef4b47127f7f34a5998b50e4470'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black12,
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          "Question 1:\n\nWhat's this species that is added to the dried silage?\n\nAnswer: Dill"),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const Text(
                      "Question 2:\n\nThis species is commonly used in the form of infusions. It is famous for its sedative properties. It is: ?\n\nAnswer: Melissa"),
                  const SizedBox(
                    height: 70,
                  ),
                  const Text(
                      "Question 3:\n\nWhat's this herb that is famous for its high iron and folic acid content?\n\nAnswer: Parsley"),
                  const SizedBox(
                    height: 70,
                  ),
                  const Text(
                      "Question 4:\n\nThis aromatic herb is powerful and should be used in moderation, as it can lead to intoxication if consumed too much. It is: ?\n\nAnswer: Sage"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
