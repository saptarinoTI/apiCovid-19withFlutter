import 'package:flutter/material.dart';

class CustomColor {
  static final _primary = 0XFF1a1b25;

  final ColorSwatch colors = ColorSwatch(_primary, {
    'primary': Color(0xFF2caa83),
    'darkColor': Color(0xff1a1a1a),
    'cardColor': Color(0xff313131),
    'bgColor': Color(0xFF262626),
    'darkText': Color(0xFF212121),
    'lightText': Color(0xFFF4F4F4),
    'disable': Color(0xFFBBBBBB),
  });
}
