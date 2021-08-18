import 'package:flutter/material.dart';
import 'package:myapp/providers/color_provider.dart';
import 'package:provider/provider.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorProvider(Colors.yellow),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Consumer<ColorProvider>(
                builder: (context, colorProvider, _) {
                  return Container(
                    height: 300.0,
                    color: colorProvider.color,
                  );
                },
              ),
              Row(
                children: [
                  _buildColorButton(Colors.green, "Green"),
                  _buildColorButton(Colors.yellow, "yellow"),
                  _buildColorButton(Colors.red, "red"),
                  _buildColorButton(Colors.purple, "purple"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorButton(Color color, String text) {
    return LayoutBuilder(
      builder: (context, _) {
        final colorProvider =
            Provider.of<ColorProvider>(context, listen: false);

        return ElevatedButton(
          onPressed: () {
            colorProvider.changeColor(color);
          },
          child: Text(text),
        );
      },
    );
  }
}
