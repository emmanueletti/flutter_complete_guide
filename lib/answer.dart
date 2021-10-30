import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function(int) handleAnswerPress;
  // since everything in Dart is an object, putting 'object" as type is the same
  // as saying any. To type Maps, the first value is the key, and the second is
  // the value: Map<Key, Value>
  final Map<String, Object> answer;

  const Answer(this.answer, this.handleAnswerPress, {Key? key})
      : super(key: key);

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
        // Colors class is merely a grouping mechanism used to hold all the values
        // for a collection of pre-defined color binaries
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer['text'] as String),
        onPressed: () => handleAnswerPress(answer['score'] as int),
      ),
    );
  }
}
