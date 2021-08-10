import 'package:flutter/material.dart';
import 'package:myapp/star_stateful.dart';

class LakeView extends StatelessWidget {
  const LakeView({Key? key}) : super(key: key);

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
        StarStateful(starColor: Colors.blue, count: 42),
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
    return Scaffold(
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
      ),
    );
  }
}
