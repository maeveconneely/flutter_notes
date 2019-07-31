import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

// void main() {
//   // builds everything
//   runApp(MyApp());
// }

// function with one statement
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// the state that is rebuilt, connected to MyApp

// leading underscore means private
// want this so MyAppState is only used in this file
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;
    // what you want to change, makes it rerender
    // automattically calls build again
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print('We have mroe questions!');
    }

    print(_questionIndex);
  }

  void _resetQuiz() {
    // set State agin with these changed variables
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
    
    
  }

  // final: run-time constant. When making the code,
  // the value is unclear. But once it is locked in
  // suring the running of the program, it doesn't
  // change
  // const: compile-time constant. When making the
  // code, you will know what it will always be
  // becuase you are assigning it in the code.

  // const on left== variable is const
  // const on right== object is const

  static const _questions = [
    // these are Map()s. This is shorthand to make them
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 2},
        {'text': 'Maeve', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // control + space to see possible arguments
    // in class
    return MaterialApp(
      // two different types of widgets:
      // Output and Input (visable)
      // Layout and Control (invisable)
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),

        // Column is invisable widget, formats everything
        // up and down. Row() to be left and right

        // this is the if else block for deciding widgets
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
