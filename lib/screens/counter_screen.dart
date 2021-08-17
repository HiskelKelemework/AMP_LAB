import 'package:flutter/material.dart';
import 'package:myapp/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  static const String routeName = '/counter';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you have pushed the button this many times"),
              Consumer<CounterProvider>(builder: (
                BuildContext context,
                CounterProvider counterProvider,
                _,
              ) {
                return Text(
                  counterProvider.counter.toString(),
                  style: TextStyle(fontSize: 30.0),
                );
              })
            ],
          ),
        ),
        floatingActionButton: LayoutBuilder(
          builder: (BuildContext context, _) {
            final counterProvider =
                Provider.of<CounterProvider>(context, listen: false);

            return FloatingActionButton(
              onPressed: counterProvider.increment,
              child: Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
