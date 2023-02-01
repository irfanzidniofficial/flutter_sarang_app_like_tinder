import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex('#03091C');
  static Color secondary = HexColor.fromHex('#262F4B');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color pink = HexColor.fromHex('#EA887B');
  static Color purple = HexColor.fromHex('#CE92E3');
  static Color black60 = HexColor.fromHex('#737D9C');
  static Color black30 = HexColor.fromHex('#8D93A8');
  static Color black = HexColor.fromHex('#5B6279');
  static Color grey = HexColor.fromHex('#D9D9D9');
  static Color grey60 = HexColor.fromHex('#A9A9AC');
}

extension HexColor on Color {
  static Color fromHex(String hexColorStrings) {
    hexColorStrings = hexColorStrings.replaceAll('#', '');
    if (hexColorStrings.length == 6) {
      hexColorStrings = 'FF$hexColorStrings';
    }

    return Color(int.parse(hexColorStrings, radix: 16));
  }
}
