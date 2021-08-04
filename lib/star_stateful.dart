import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarStateful extends StatefulWidget {
  final bool selected;
  final int starCount;

  StarStateful(this.selected, this.starCount);

  _StarStatefulState createState() {
    return _StarStatefulState();
  }
}

class _StarStatefulState extends State<StarStateful> {
  late bool selected;
  late int starCount;

  @override
  void initState() {
    selected = widget.selected;
    starCount = widget.starCount;
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
            selected ? Icons.star : Icons.star_outline_outlined,
            color: Colors.red,
          ),
        ),
        Text("$starCount"),
      ],
    );
  }
}
