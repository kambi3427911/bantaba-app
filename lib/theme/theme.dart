import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      labelStyle: TextStyle(
        color: Colors.blue,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
    colorScheme: ColorScheme(
      primary: Colors.blue,
      primaryVariant: Colors.blueAccent,
      secondary: Colors.orange,
      secondaryVariant: Colors.deepOrange,
      surface: Colors.white,
      background: Colors.grey[200]!,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.blueGrey,
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueGrey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      labelStyle: TextStyle(
        color: Colors.blue,[
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blueGrey,
      textTheme: ButtonTextTheme.primary,
    ),
    colorScheme: ColorScheme(
      primary: Colors.blueGrey,
      primaryVariant: Colors.blue,
      secondary: Colors.amber,
      secondaryVariant: Colors.deepOrange,
      surface: Colors.grey[850]!,
      background: Colors.black,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.white,
      brightness: Brightness.dark,
    ),
  );
}