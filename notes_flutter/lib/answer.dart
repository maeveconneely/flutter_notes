import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        // no () becuase it will automatically
        // run it wether or not it was pressed

        // () is like lambda
        //() => print('answer 2'),
        //() { print('answer 3');},

        onPressed: selectHandler,
      ),
    );
  }
}
