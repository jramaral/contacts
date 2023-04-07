import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xff2aacff);
const accentColor = Color(0xffffffff);

ThemeData androidTheme() {
  return ThemeData(
      brightness: brightness,
      fontFamily: 'Poppins',
      primaryColor: primaryColor,
    //  secondaryHeaderColor: accentColor,
   //colorScheme: Theme.of(context).colorScheme.secondary
      );
}
