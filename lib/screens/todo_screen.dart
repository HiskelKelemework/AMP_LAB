import 'package:flutter/material.dart';
import 'package:myapp/screens/todo_detail_screen.dart';

class TodoScreen extends StatelessWidget {
  static const String routeName = '/todos';

  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 40.0,
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 2.0),
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
