import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final int starCount;
  final bool selected;

  Star(this.starCount, this.selected);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          selected ? Icons.star : Icons.star_outline,
          color: Colors.red,
        ),
        Text("$starCount"),
      ],
    );
  }
}
