import 'package:flutter/material.dart';
import 'package:medicinal_herbs/app/core/config.dart';
import 'package:medicinal_herbs/features/quiz_page/quiz_elements/result.dart';
import 'package:medicinal_herbs/features/quiz_page/quiz_page.dart';

void main() {
  runApp(const QuizHomePage());
}

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({Key? key}) : super(key: key);

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  final _questions = const [
    {
      'questionText':
          "Question 1:\n\nWhat's this species that is added to the dried silage?",
      'answers': [
        {'text': 'Garlic', 'score': 0},
        {'text': 'Dill', 'score': 1},
        {'text': 'Parsley', 'score': 0},
        {'text': 'Oregano', ' score': 0}
      ]
    },
    {
      'questionText':
          'Question 2:\n\nThis species is commonly used in the form of infusions. It is famous for its sedative properties. It is: ?',
      'answers': [
        {'text': 'Melissa', 'score': 1},
        {'text': 'Verbena', 'score': 0},
        {'text': 'Lavender', 'score': 0},
        {'text': 'Rosemary', 'score': 0}
      ]
    },
    {
      'questionText':
          "Question 3:\n\nWhat's this herb that is famous for its high iron and folic acid content?",
      'answers': [
        {'text': 'Sorrel', 'score': 0},
        {'text': 'Spinach', 'score': 0},
        {'text': 'Parsley', 'score': 1},
        {'text': 'Fenugreek', 'score': 0}
      ]
    },
    {
      'questionText':
          "Question 4:\n\nThis aromatic herb is powerful and should be used in moderation, as it can lead to intoxication if consumed too much. It is: ?",
      'answers': [
        {'text': 'Savory', 'score': 0},
        {'text': 'Lovage', 'score': 0},
        {'text': 'Sage', 'score': 1},
        {'text': 'Chive', 'score': 0}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          title: Text(
            Config.title,
            style: const TextStyle(
              color: Colors.lime,
            ),
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://5.imimg.com/data5/YV/SX/DK/SELLER-1354677/medicinal-herbs-500x500.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black26,
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: QuizPage(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ),
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
