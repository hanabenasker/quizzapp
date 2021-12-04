import 'package:flutter/material.dart';
import 'package:quizzapp/models/questions.dart';

class Result extends StatelessWidget {
  int total = 0;
  Result({required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result',
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
            const Text(
              "Your Score",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "${total}/${questions.length}",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 180,
              height: 60,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/question');
                },
                icon: Icon(
                  Icons.repeat_rounded,
                  size: 25.0,
                ),
                label: const Text(
                  "REPLAY",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 180,
              height: 60,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(
                  Icons.home,
                  size: 25.0,
                ),
                label: const Text(
                  "HOME",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
