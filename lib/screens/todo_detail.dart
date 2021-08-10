import 'package:flutter/material.dart';

class TodoDetail extends StatelessWidget {
  static const String routeName = '/detail';

  const TodoDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoTitle = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(todoTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Back"),
        ),
      ),
    );
  }
}
