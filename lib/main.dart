import 'package:flutter/material.dart';
import 'package:quizzapp/screens/home.dart';
import 'package:quizzapp/screens/question.dart';
import 'package:quizzapp/screens/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Home(),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings setting) {
        switch (setting.name) {
          case '/home':
            return MaterialPageRoute(builder: (context) {
              return Home();
            });

          case '/question':
            return MaterialPageRoute(builder: (context) {
              return Questions();
            });
          case '/result':
            final args = setting.arguments as Result;
            return MaterialPageRoute(builder: (context) {
              return Result(total: args.total);
            });
        }
      },
    );
  }
}
