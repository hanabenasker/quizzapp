import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quizzapp/components/answer.dart';
import 'package:quizzapp/models/questions.dart';
import 'package:quizzapp/screens/result.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int questionIndex = 0;
  int total = 0;

  bool done = false;

  void onAnswer(bool score) {
    print('score');
    setState(() {
      if (score) {
        total++;
      }
      if (done) {
        Navigator.pushNamed(context, '/result',
            arguments: Result(
              total: total,
            ));
        return;
      }

      questionIndex++;

      if ((questionIndex + 1) == questions.length) {
        done = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quizz',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 340,
              child: Text(
                questions[questionIndex]['question'].toString(),
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ...(questions[questionIndex]['options']
                    as List<Map<String, dynamic>>)
                .map((answer) => Answer(
                      answer: answer['answer'],
                      onChoose: () {
                        onAnswer(answer['score']);
                      },
                    )),
          ],
        ),
      ),
    );
  }
}
