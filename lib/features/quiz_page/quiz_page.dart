import 'package:flutter/material.dart';
import 'package:medicinal_herbs/features/quiz_page/quiz_elements/answer.dart';
import 'package:medicinal_herbs/features/quiz_page/quiz_elements/question.dart';


class QuizPage extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
   const QuizPage(
      {Key? key, required this.questions,
      required this.answerQuestion,
      required this.questionIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String );
        }).toList(),
      ],
    );
  }
}