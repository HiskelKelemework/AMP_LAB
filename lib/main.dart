import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/first_screen.dart';
import 'package:myapp/screens/second_screen.dart';
import 'package:myapp/screens/todo_detail.dart';
import 'package:myapp/screens/todo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: TodoScreen.routeName,
      routes: {
        FirstScreen.routeName: (BuildContext context) => FirstScreen(),
        SecondScreen.routeName: (BuildContext context) => SecondScreen(),
        TodoScreen.routeName: (BuildContext context) => TodoScreen(),
        TodoDetail.routeName: (BuildContext context) => TodoDetail(),
      },
    );
  }
}
