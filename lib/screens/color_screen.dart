import 'package:flutter/material.dart';
import 'package:myapp/providers/color_provider.dart';
import 'package:provider/provider.dart';

class ColorScreen extends StatelessWidget {
  ColorScreen({Key? key}) : super(key: key);

  final colorProvider = ColorProvider(Colors.black);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ColorProvider>(
      create: (context) => colorProvider,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Consumer<ColorProvider>(
                builder: (context, state, _) {
                  return Container(
                    height: 300,
                    color: state.color,
                  );
                },
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        colorProvider.changeColor(Colors.green);
                      },
                      child: Text('green')),
                  ElevatedButton(
                      onPressed: () {
                        colorProvider.changeColor(Colors.red);
                      },
                      child: Text('red')),
                  ElevatedButton(
                      onPressed: () {
                        colorProvider.changeColor(Colors.yellow);
                      },
                      child: Text('yellow')),
                  ElevatedButton(
                      onPressed: () {
                        colorProvider.changeColor(Colors.blue);
                      },
                      child: Text('blue')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
