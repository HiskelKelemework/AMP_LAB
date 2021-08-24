import 'package:flutter/material.dart';

class FutureStreamScreen extends StatelessWidget {
  const FutureStreamScreen({Key? key}) : super(key: key);
  Future<String> getText() async {
    await Future.delayed(Duration(seconds: 3));
    return "Hello world";
  }

  Stream<int> getCounter() async* {
    int i = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
      i++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: getText(),
              builder: (_, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!);
                }

                return CircularProgressIndicator();
              },
            ),
            StreamBuilder(
              stream: getCounter(),
              initialData: 0,
              builder: (_, AsyncSnapshot<int> snapshot) {
                print(snapshot.connectionState);
                return Text(
                  "${snapshot.data}",
                  style: TextStyle(fontSize: 45),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
