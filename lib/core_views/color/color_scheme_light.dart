import 'dart:ui';

import './color_pallete.dart';

abstract class TemanJabarColorSchemeLight {
  static Color get primaryColor => ColorPallete.green_600;

  static Color get primaryVariantColor => ColorPallete.green_800;

  static Color get secondaryColor => ColorPallete.yellow_400;

  static Color get secondaryVariantColor => ColorPallete.yellow_600;

  static Color get tertiaryColor => ColorPallete.blue_600;

  static Color get tertiaryVariantColor => ColorPallete.blue_800;

  static Color get activeColor => ColorPallete.green_700;

  static Color get errorColor => (ColorPallete.red_700);

  static Color get warningColor => (ColorPallete.yellow_700);

  static Color get infoColor => (ColorPallete.blue_700);

  static Color get headerTextColor => (ColorPallete.gray_900);

  static Color get headerTextSecondaryColor => (ColorPallete.blue_gray_900);

  static Color get bodyTextColor => (ColorPallete.gray_800);

  static Color get bodyTextSecondaryColor => (ColorPallete.gray_700);

  static Color get disabledTextColor => (ColorPallete.gray_600);

  static Color get borderColor => (ColorPallete.gray_400);

  static Color get inputFillColor => (ColorPallete.gray_100);
}
