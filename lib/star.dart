import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/providers/start_provider.dart';
import 'package:provider/provider.dart';

class Star extends StatelessWidget {
  final Color starColor;
  final int starCount;

  late StartProvider startProvider;

  Star({required this.starColor, required this.starCount}) {
    startProvider = StartProvider(false, starCount);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StartProvider>(
      create: (context) => startProvider,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              startProvider.toggle();
            },
            child: Consumer<StartProvider>(
              builder: (context, state, _) {
                final filled = state.isSelected;

                return Icon(
                  filled ? Icons.star : Icons.star_outline,
                  color: starColor,
                );
              },
            ),
          ),
          Consumer<StartProvider>(builder: (context, state, _) {
            return Text("${state.starCount}");
          }),
        ],
      ),
    );
  }
}
