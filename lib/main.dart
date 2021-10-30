import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// Note:
// all widgets are classes that extend a base widget in Flutter
// the classes will have a build method that returns the widget
class MyApp extends StatefulWidget {
  // createState method returns a State with type of StatefulWidget
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = [
    "Whats your favourite colour?",
    "What's your favourite animal?"
  ];

  // Using var instead of the type "int" as it is better practise to
  // rely on type inference for simple things like this,
  // type inference is activated because the variable is initilized to a value
  // if not initialized, then we would need to specify the type
  // don't duplicate work
  var _questionIndex = 0;

  void _answerQuestion() {
    // SetState is a function that takes a callback function to set properties
    // in the _MyAppState object. When properties in the _MyAppState object
    // change, Flutter does a re-render of the affect widgets.
    setState(() {
      _questionIndex++;
    });
    // debugging prints
    print(_questionIndex);
    print('answer chosen');
  }

// Necesary override of the build method inherited from statelesswidget
// returns a widget, which is a normal Dart object that extends StatefulWdiget
// StatelessWidget and implements a build method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // named body argument of the Scaffold class takes a column widget
        // which itself takes a named children argument that takes an array
        // of widgets
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]),
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
