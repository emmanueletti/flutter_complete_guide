import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // property
  final String questionText;

  // contructor
  const Question(this.questionText, {Key? key}) : super(key: key);

  // necesary override of the build method inherited from statelesswidget
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // const EdgeInsets.all(10) is the syntax for a passing info to a custom
      // constructor "all" that takes arguments to produce pre-configured
      // object instances
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
