import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;
  final void Function(int) handleAnswerPress;

  const Quiz(this.questionText, this.answers, this.handleAnswerPress,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText),
        // just like in React, an array or List of widgets can be declaratively
        // passed to Flutter to render with a few additional Dart add-ons

        // 1 - priority to refactoring (refer to previous commits), Dart needed
        // to be explicitly told that questions[_questionIndex]['answers']
        // is a list of strings, done using the "as" keyword to typecast to List<String>
        // so function looked like:
        // ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
        //   return Answer(handleAnswerPress, answer);
        // }).toList(),

        // 2 - Dart's map functions returns an "iterable" which is a parent class
        // for all the different types of iterables (list, maps, etc). So we need
        // to turn the vague "iterable" into the specific iterable type "List"
        // using the .toList() method

        // 3 - we are already inside a List of widgets (Column) and can't nest
        // another list of widgets (Answers) inside. We want to pass distinct,
        // stand alone widgets. So we use the spread operator to remove the
        // brackets and have each individual answer widget be at the top layer of
        // Columns widget List
        ...(answers).map((answer) {
          return Answer(answer, handleAnswerPress);
        }).toList(),
      ],
    );
  }
}
