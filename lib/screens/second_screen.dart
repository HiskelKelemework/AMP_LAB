import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = '/second';
  SecondScreen({Key? key}) : super(key: key);

  late String msg;

  @override
  Widget build(BuildContext context) {
    final msg = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "result here");
              },
              child: Text("Back to First screen"),
            ),
          ],
        ),
      ),
    );
  }
}
