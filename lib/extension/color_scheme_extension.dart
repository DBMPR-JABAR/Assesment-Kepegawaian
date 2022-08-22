import 'package:assesment/core_views/color/color_scheme_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

extension ColorSchemeExtension on ColorScheme {
  bool get _isDarkTheme =>
      SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

  Color get info {
    return TemanJabarColorSchemeLight.infoColor;
  }

  Color get warning {
    return TemanJabarColorSchemeLight.warningColor;
  }

  Color get headerTextColor {
    return TemanJabarColorSchemeLight.headerTextColor;
  }

  Color get headerTextSecondaryColor {
    return TemanJabarColorSchemeLight.headerTextSecondaryColor;
  }

  Color get bodyTextColor {
    return TemanJabarColorSchemeLight.bodyTextColor;
  }

  Color get bodyTextSecondaryColor {
    return TemanJabarColorSchemeLight.bodyTextSecondaryColor;
  }

  Color get disabledTextColor {
    return TemanJabarColorSchemeLight.disabledTextColor;
  }

  Color get borderColor {
    return TemanJabarColorSchemeLight.borderColor;
  }

  Color get inputFillColor {
    return TemanJabarColorSchemeLight.inputFillColor;
  }
}
