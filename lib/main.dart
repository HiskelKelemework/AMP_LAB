import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/star.dart';
import 'package:myapp/star_stateful.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _buildTextRow() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "some lake in Europe",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "a description about the lake",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Star(starColor: Colors.blue, starCount: 42),
      ],
    );
  }

  Widget _buildIconRow() {
    final textStyle = TextStyle(color: Colors.blue);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              Text(
                "CALL",
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.router,
                color: Colors.blue,
              ),
              Text(
                "ROUTE",
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              Text(
                "SHARE",
                style: textStyle,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildText() {
    return Text(
      "Proident enim et duis qui excepteur commodo amet cillum velit velit ullamco. Adipisicing esse officia ullamco consectetur ex. Reprehenderit proident enim deserunt laboris. Dolor consequat occaecat tempor qui deserunt sint sint nulla commodo laboris deserunt sunt excepteur laboris",
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = <Color>[
      Colors.black,
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.purple,
      Colors.cyan,
      Colors.orange,
      Colors.brown,
      Colors.black,
      Colors.red,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Image.asset("assets/lake.jpg"),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 20.0,
            ),
            child: Column(
              children: [
                _buildTextRow(),
                _buildIconRow(),
                _buildText(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
