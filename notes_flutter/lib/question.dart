import 'package:flutter/material.dart';

// st for automatic fill in for a class
class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // makes it as big as the text
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        this._questionText,
        style: TextStyle(
          fontSize: 40,
        ),
        // hold control on a class to see the source code
        textAlign: TextAlign.center,
      ),
    );
  }
}
