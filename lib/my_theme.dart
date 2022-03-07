import 'package:flutter/material.dart';

class MyThemeData {
  static const colorBlack = Color.fromARGB(255, 36, 36, 36);
  static const colorGold = Color.fromARGB(255, 183, 147, 95);
  static const blueBlack = Color(0xFF141A2E);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorYellow = Color(0xFFFACC1D);

  static var lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: colorGold,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: colorBlack),
          color: Colors.transparent,
          elevation: 0),
      textTheme: TextTheme(
          headline1: TextStyle(
              color: colorBlack, fontSize: 30, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 24, color: colorBlack)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorGold,
        selectedItemColor: colorBlack,
        unselectedItemColor: Colors.white,
      ),
      bottomAppBarColor: colorGold);
  static var darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: blueBlack,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: colorWhite),
        color: Colors.transparent,
        elevation: 0),
    textTheme: TextTheme(
        headline1: TextStyle(
            color: colorWhite, fontSize: 30, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 24, color: colorWhite)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorYellow,
      unselectedItemColor: Colors.white,
    ),
  );
}
