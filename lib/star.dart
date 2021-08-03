import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Color starColor;
  final String text;

  const Star({
    required this.starColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: starColor,
        ),
        Text(text),
      ],
    );
  }
}
