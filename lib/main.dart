import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main(){
// runApp(MyApp());
// }

void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Ad Antonio mangia la pizza:',
      'answers': [
        {'Text': 'al pomodoro', 'score': 0},
        {'Text': 'al bianco', 'score': 1},
        {'Text': 'entrambe', 'score': 0},
      ],
    },

    {
      'questionText': 'Ad Antonio Flutter:',
      'answers': [
        {'Text': 'fa smadonnare', 'score': 1},
        {'Text': 'piace', 'score': 0},
        {'Text': 'indifferente', 'score': 0},
      ],
    },

    {
      'questionText': 'il colore preferito di Antonio è:',
      'answers': [
        {'Text': 'il rosso', 'score': 0},
        {'Text': 'il viola', 'score': 0},
        {'Text': 'il blu', 'score': 1},
      ],
    },

  ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz(){
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {

      totalScore += score;
      questionIndex = questionIndex + 1;
    });
    print('QUESTION INDEX $questionIndex'); //prova per vedere nel terminale
  }

  @override
  Widget build(BuildContext context) {
    //SCAFFOLD CREATE A BASE PAGE DESIGN
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          centerTitle: true,
        ),
        body: questionIndex < questions.length
            ? Quiz(questions, questionIndex, answerQuestion)
            : Result(totalScore, resetQuiz)
      ),
    );
  }
}
