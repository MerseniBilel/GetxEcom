import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    primaryColor: const Color(0xFF00C569),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 0,
        side: const BorderSide(
          width: 0.5,
          color: Colors.blueGrey,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFF00C569),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.black,
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        color: Color(0xFF00C569),
      )),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF00C569),
        ),
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0),
      headline2: TextStyle(fontSize: 62.0),
      headline3: TextStyle(fontSize: 52.0),
      headline4: TextStyle(fontSize: 42.0),
      headline5: TextStyle(fontSize: 32.0),
      headline6: TextStyle(fontSize: 22.0),
    ));
