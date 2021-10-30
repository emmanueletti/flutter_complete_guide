import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// Note:
// all widgets are classes that extend a base widget in Flutter
// the classes will have a build method that returns the widget
class MyApp extends StatefulWidget {
  // createState method returns a State with type of StatefulWidget
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
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
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  // Using var instead of the type "int" as it is better practise to
  // rely on type inference for simple things like this,
  // type inference is activated because the variable is initilized to a value
  // if not initialized, then we would need to specify the type
  // don't duplicate work
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // SetState is a function that comes wit the flutter material dart import.
    // It takes a callback function to set properties
    // in the _MyAppState object. When properties in the _MyAppState object
    // change, Flutter does a re-render of the affect widgets.
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

// Necesary override of the build method inherited from statelesswidget
// returns a widget, which is a normal Dart object that extends StatefulWdiget
// StatelessWidget and implements a build method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        // named body argument of the Scaffold class takes a column widget
        // which itself takes a named children argument that takes an array
        // of widgets
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions[_questionIndex]['questionText'] as String,
                _questions[_questionIndex]['answers']
                    as List<Map<String, Object>>,
                _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

// runApp() function calls the build method on the class instance passed in
void main() {
  runApp(MyApp());
}

// Arrow function syntax
// used when a function has only one expression to run
// expression will also automaticalled be returned
// void main() => runApp(MyApp());
