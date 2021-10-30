import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final VoidCallback handleResetPress;

  const Result(this._totalScore, this.handleResetPress, {Key? key})
      : super(key: key);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (_totalScore <= 8) {
      resultText += ' And you are awesome!';
    } else if (_totalScore <= 12) {
      resultText += ' And you are pretty ok.';
    } else if (_totalScore <= 16) {
      resultText += ' And you are ... strange.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            // resultPhrase is text returned from getter
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                'Reset Quiz',
              ),
              onPressed: handleResetPress)
        ],
      ),
    );
  }
}
