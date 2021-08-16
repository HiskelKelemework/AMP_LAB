import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = "/second";

  const SecondScreen({Key? key}) : super(key: key);

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
                Navigator.pop(context, "Hello from the other side");
              },
              child: Text("To Previous screen"),
            ),
          ],
        ),
      ),
    );
  }
}
