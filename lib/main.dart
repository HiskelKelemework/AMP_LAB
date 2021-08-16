import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/first_screen.dart';
import 'package:myapp/screens/lake_view_screen.dart';
import 'package:myapp/screens/second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/first",
      routes: {
        "/first": (BuildContext context) => FirstScreen(),
        "/second": (BuildContext context) => SecondScreen(),
      },
    );
  }
}
