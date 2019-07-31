import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
          // the <Widget> tells you what it needs to be
          children: [
            Question(questions[questionIndex]['questionText']),

            // You can pass functions like arguments
            // bc it is just a pointer

            // map is like a for loop
            // returns the answers in the list to the list
            // as a Answers object. The ... adds it to
            // the children list.
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              // if want to pass something to pointer, make anyonymous function
              return Answer(() => answerQuestion(answer['score']), answer['text']);
            }).toList()
            
          ],
        );
  }
}