import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);

  final String questionText;

  //STORE this.questionText in questionText
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 50.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}

