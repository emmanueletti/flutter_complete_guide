import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _answerQuestion;

  const Answer(this._answerQuestion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // everything in Dart is an object, here we are accessing a static
      // property on the "double" object.
      // setting width as double.infinity makes it take up the entirety of the
      // width space available.
      width: double.infinity,
      child: RaisedButton(
        // providing color named argument with the value of a static property
        // on an un-instantiated Colors class
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: _answerQuestion,
      ),
    );
  }
}
