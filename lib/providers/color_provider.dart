import 'package:flutter/cupertino.dart';

class ColorProvider extends ChangeNotifier {
  Color _color;
  Color get color => _color;

  ColorProvider(this._color);

  void changeColor(Color color) {
    _color = color;
    notifyListeners();
  }
}
