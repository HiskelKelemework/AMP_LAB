import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/star.dart';
import 'package:myapp/star_stateful.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _buildImage() {
    return Image.asset(
      "assets/portait.jpg",
      width: double.infinity,
      height: 300,
      fit: BoxFit.cover,
    );
  }

  Widget _buildButtonBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 6.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.edit),
              SizedBox(width: 10.0),
              Icon(Icons.menu),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBottomText() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          "Ali Connors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 300.0,
                child: Stack(
                  children: [
                    _buildImage(),
                    _buildButtonBar(),
                    _buildBottomText(),
                  ],
                ),
              ),
              StarStateful(true, 45),
            ],
          ),
        ),
      ),
    );
  }
}
