import 'package:flutter/material.dart';
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
        {'text': 'Oregano', 'score': 0}
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QUIZ'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? QuizPage(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
