import 'package:flutter/material.dart';
import 'package:myapp/screens/todo_detail.dart';

class TodoScreen extends StatelessWidget {
  static const String routeName = "/todos";

  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: SafeArea(
        child: ListView.builder(
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
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 2),
                alignment: Alignment.center,
                child: Text(
                  "Todo $index",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
