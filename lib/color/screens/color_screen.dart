import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/color/blocs/color_bloc.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => ColorBloc(),
      child: Scaffold(
        body: Center(
          child: Column(children: [
            BlocBuilder<ColorBloc, Color>(
              builder: (ctx, colorState) {
                return Container(
                  height: 300.0,
                  color: colorState,
                );
              },
            ),
            LayoutBuilder(builder: (ctx, _) {
              final colorBloc = BlocProvider.of<ColorBloc>(ctx);

              return Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(Colors.green);
                    },
                    child: Text("Green"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(Colors.yellow);
                    },
                    child: Text("Yellow"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(Colors.blue);
                    },
                    child: Text("Blue"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      colorBloc.add(Colors.red);
                    },
                    child: Text("Red"),
                  ),
                ],
              );
            }),
          ]),
        ),
      ),
    );
  }
}
