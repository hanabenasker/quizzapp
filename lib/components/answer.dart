import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  final void Function() onChoose;
  Answer({required this.answer, required this.onChoose});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChoose,
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.indigo),
            borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          answer,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
