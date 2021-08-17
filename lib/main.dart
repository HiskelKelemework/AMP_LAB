import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/blocs/test_bloc.dart';
import 'package:myapp/blocs/test_event.dart';
import 'package:myapp/blocs/test_state.dart';
import 'package:myapp/star_stateful.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: 330.0,
            child: Stack(
              children: [
                Container(
                  height: 250.0,
                  color: Colors.purple,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 180.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int index) {
                        return Container(
                          margin: EdgeInsets.only(
                            right: 10.0,
                            left: index == 0 ? 10.0 : 0.0,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                margin: EdgeInsets.only(top: 10.0, left: 10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                alignment: Alignment.center,
                                child: Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 20.0,
                                right: 0,
                                left: 0,
                                child: Text(
                                  "Yeabsira Solomon",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
