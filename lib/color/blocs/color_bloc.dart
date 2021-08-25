import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<Color, Color> {
  ColorBloc() : super(Colors.black);

  @override
  Stream<Color> mapEventToState(Color color) async* {
    yield color;
  }
}
