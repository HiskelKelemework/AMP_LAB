import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 10;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
