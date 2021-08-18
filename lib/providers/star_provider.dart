import 'package:flutter/foundation.dart';

class StarProvider extends ChangeNotifier {
  int starCount;
  bool selected;

  StarProvider(this.starCount, this.selected);

  void toggle() {
    if (selected) {
      starCount--;
    } else {
      starCount++;
    }

    selected = !selected;
    notifyListeners();
  }
}
