import 'package:flutter/material.dart';
import 'package:myapp/screens/todo_detail.dart';

class TodoScreen extends StatelessWidget {
  static const String routeName = '/todo';

  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todo list"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                TodoDetail.routeName,
                arguments: "Todo $index",
              );
            },
            child: Container(
              height: 50.0,
              margin: EdgeInsets.symmetric(vertical: 2.0),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                "Todo $index",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
