import 'package:flutter/material.dart';

class StartProvider extends ChangeNotifier {
  bool isSelected;
  int starCount;

  StartProvider(this.isSelected, this.starCount);

  void toggle() {
    if (isSelected) {
      starCount--;
    } else {
      starCount++;
    }

    isSelected = !isSelected;
    notifyListeners();
  }
}
