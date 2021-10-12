import 'package:flutter/material.dart';

// Note:
// all widgets are classes that extend a base widget in Flutter
// the classes will have a build method that returns the widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      print('answer chosen');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Question'),
            ElevatedButton(
              child: Text('Answer 1'),
              // can add callback function for event listener:
              // 1 - as a named function
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              // 2 - as an anonymous function in arrow syntax
              // if only one line of expression to execute
              onPressed: () => print('answer chosen'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              // 3 - as an anonymous function with more lines of expression
              // invovled
              onPressed: () {
                // ...code
                print('answer chosen');
              },
            ),
          ],
        ),
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
