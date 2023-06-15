import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 22,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //     backgroundColor: Colors.blueGrey,
  //   ),
  // ),
  fontFamily: "PublicSans",
  focusColor: Colors.black,
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 18),
    bodyLarge: TextStyle(fontSize: 20),
  ),
);
