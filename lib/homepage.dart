import 'package:flutter/material.dart';
import 'package:flutter_course/answer.dart';
import 'question.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'question': 'Ki vagy?',
      'answers': ['Micimackó', 'Hófehérke', 'Törpapa']
    },
    {
      'question': 'Hol vagy?',
      'answers': ['otthon', 'boltban', 'munkahelyen', 'Balaton']
    },
    {
      'question': 'Hol születtél',
      'answers': ['Hatvan', 'Budapest', 'Ecséd']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Első program'),
      ),
      body: Column(
        children: [
          Question(
              questionText: questions[_questionIndex]['question'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map(
                (answer) => Answer(
                  onTap: _onAnswer,
                  answer: answer,
                ),
              )
              .toList(), // toList not necessiary
        ],
      ),
    );
  }

  void _onAnswer() {
    setState(() {
      _questionIndex++;
    });

    // ignore: avoid_print
    print(_questionIndex.toString());
    // ignore: avoid_print
    print('Answer1');
  }
}
