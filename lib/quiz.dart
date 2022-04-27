import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function selectHandler;

  Quiz(this.questions, this.questionIndex, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questions[questionIndex]['questionText'] as String //vado ad utilizzare quel ciclo creato sopra con il setState, del questionindex andandoli a dire: scorri questions e aggiungi +1 alla domanda e dico che mi deve tornare una stringa
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => selectHandler(answer['score']), answer['Text'] as String); //restituisce 3 widget
        }).toList() //restituisce una lista di widget, che vado a passare nel main
      ],
    );
  }
}
