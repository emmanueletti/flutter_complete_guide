import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  const Result(this._totalScore, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Survey Finished! Your score is $_totalScore"),
    );
  }
}
