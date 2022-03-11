import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor millicomPalette = MaterialColor(
    0xFFD858,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffffecac), //10%
      100: Color(0xffffe89b), //20%
      200: Color(0xffffe48a), //30%
      300: Color(0xffffe079), //40%
      400: Color(0xffffdc69), //50%
      500: Color(0xffffd858), //60%
      600: Color(0xffe6c24f), //70%
      700: Color(0xffccad46), //80%
      800: Color(0xffb3973e), //90%
      900: Color(0xff998235), //100%
    },
  );
}
