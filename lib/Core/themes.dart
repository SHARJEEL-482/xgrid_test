import 'package:flutter/material.dart';

class Themes {
  static var lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.yellow[800],
    primaryColorDark: Colors.brown[900],
    primaryColorLight: Colors.grey[350],
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ),
  );

  static var darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ),
  );
}
