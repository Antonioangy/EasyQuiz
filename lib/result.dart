import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 3) {
      resultText = 'hai fatto 3 punti, perfetto';
    } else if (resultScore == 2) {
      resultText = 'hai fatto 2 punti, bravo';
    } else if (resultScore == 1) {
      resultText = 'hai fatto 1 punto, devi migliorare';
    } else {
      resultText = 'hai fatto 0 punti, sei scandaloso';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('riprova il quiz!'),
            ),
            onPressed: resetHandler,
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
