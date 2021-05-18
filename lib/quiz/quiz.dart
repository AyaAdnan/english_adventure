import 'package:flutter/material.dart';
import 'Answer.dart';
import 'question.dart';


class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final questionIndex;
  final color;

  final List<Map<String, Object>> question;
  Quiz(
      {@required this.answerQuestion,
      @required this.question,
      @required this.color,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      child: ListView(
        children: [
          Question(question[questionIndex]['questionText']),
          ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(answer['Score']), answer['text'], color,answer['Score']);
          }).toList(),
        ],
      ),
    );
  }
}
