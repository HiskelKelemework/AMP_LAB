import 'package:flutter/material.dart';
import 'package:myapp/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  static const String routeName = '/first';

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.pushNamed(
              context,
              SecondScreen.routeName,
              arguments: "This is my message",
            );
            // this line
            print("result:: $result");
          },
          child: Text("To second screen"),
        ),
      ),
    );
  }
}