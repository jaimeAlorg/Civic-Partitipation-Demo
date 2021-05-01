import 'dart:ui';
import 'package:flutter/material.dart';

Map<int, Color> color =
{
  50: Color.fromRGBO(0,61,89, .1),
  100: Color.fromRGBO(0,61,89, .2),
  200: Color.fromRGBO(0,61,89, .3),
  300: Color.fromRGBO(0,61,89, .4),
  400: Color.fromRGBO(0,61,89, .5),
  500: Color.fromRGBO(0,61,89, .6),
  600: Color.fromRGBO(0,61,89, .7),
  700: Color.fromRGBO(0,61,89, .8),
  800: Color.fromRGBO(0,61,89, .9),
  900: Color.fromRGBO(0,61,89, 1),
};

Map<int, Color> secondaryColor =
{
  50: Color.fromRGBO(196,0,199, .1),
  100: Color.fromRGBO(196,0,199, .2),
  200: Color.fromRGBO(196,0,199, .3),
  300: Color.fromRGBO(196,0,199, .4),
  400: Color.fromRGBO(196,0,199, .5),
  500: Color.fromRGBO(196,0,199, .6),
  600: Color.fromRGBO(196,0,199, .7),
  700: Color.fromRGBO(196,0,199, .8),
  800: Color.fromRGBO(196,0,199, .9),
  900: Color.fromRGBO(196,0,199, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF008CB4, color);
MaterialColor secondaryCustom = MaterialColor(0xFFC400C7, color);

final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  return ThemeData(
      primarySwatch: colorCustom,
      primaryColor: colorCustom,
      accentColor: secondaryCustom,
      bottomAppBarColor: colorCustom,
  );
}