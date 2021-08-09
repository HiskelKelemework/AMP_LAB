import 'package:flutter/material.dart';

class StarInteractive extends StatefulWidget {
  final int starCount;
  final bool selected;
  final age = 55;

  StarInteractive(this.starCount, this.selected);

  @override
  _StarInteractiveState createState() {
    return _StarInteractiveState();
  }
}

class _StarInteractiveState extends State<StarInteractive> {
  late int starCount;
  late bool selected;

  @override
  void initState() {
    starCount = widget.starCount;
    selected = widget.selected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (selected) {
                starCount--;
              } else {
                starCount++;
              }

              selected = !selected;
            });
          },
          child: Icon(
            selected ? Icons.star : Icons.star_outline,
            color: Colors.red,
          ),
        ),
        Text("$starCount"),
      ],
    );
  }
}
