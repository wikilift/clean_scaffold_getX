import 'package:flutter/material.dart';

final ThemeData appThemeDataLight = ThemeData(
  primaryColor: Colors.blueAccent,
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
);
