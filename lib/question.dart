import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // contructor
  const Question(this.questionText, {Key? key}) : super(key: key);

  // property
  final String questionText;

  // necesary override of the build method inherited from statelesswidget
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
