

import 'package:flutter/material.dart';

class ColorRes {

  ColorRes._();

  static ColorRes get instance {
    return ColorRes._();
  }

  Color get white => Colors.white;
  Color get black => Colors.black;
  Color get greenAccent => Colors.greenAccent;
  Color get transparent => Colors.transparent;
  Color get grey => Colors.grey;

}