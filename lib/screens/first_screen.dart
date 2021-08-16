import 'package:flutter/material.dart';
import 'package:myapp/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
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
              "/second",
              arguments: "From first screen",
            );

            print("popped with $result");
          },
          child: Text("To Second screen"),
        ),
      ),
    );
  }
}
