import 'package:flutter/material.dart';

class TodoDetail extends StatelessWidget {
  static const String routeName = '/detail';

  const TodoDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("detail screen"),
      ),
    );
  }
}
