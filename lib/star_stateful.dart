import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/providers/star_provider.dart';
import 'package:provider/provider.dart';

class StarStateful extends StatelessWidget {
  final Color starColor;
  final int count;

  StarStateful({
    required this.starColor,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StarProvider>(
      create: (context) => StarProvider(count, false),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LayoutBuilder(builder: (ctx, _) {
            final starProvider = Provider.of<StarProvider>(ctx, listen: false);

            return GestureDetector(onTap: () {
              starProvider.toggle();
            }, child: Consumer<StarProvider>(
              builder: (context, starState, _) {
                return Icon(
                  starState.selected ? Icons.star : Icons.star_outline,
                  color: starColor,
                );
              },
            ));
          }),
          Consumer<StarProvider>(
            builder: (context, starState, _) {
              final count = starState.starCount;

              return Text("$count");
            },
          ),
          TestWidget(),
        ],
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final starProvider = Provider.of<StarProvider>(context, listen: false);

    return Text(" Some text ${starProvider.starCount}");
  }
}
