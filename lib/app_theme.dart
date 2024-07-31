import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color white = Color(0xffF8F8F8);
  static const Color black = Color(0xff242424);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle:
          TextStyle(color: black, fontSize: 30, fontWeight: FontWeight.bold),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: black,
      unselectedItemColor: white,
    ),
    textTheme: TextTheme(
      headlineSmall:
          TextStyle(color: black, fontSize: 25, fontWeight: FontWeight.w400),
      titleMedium:
          TextStyle(color: black, fontSize: 25, fontWeight: FontWeight.w600),
      titleLarge:
          TextStyle(color: black, fontSize: 20, fontWeight: FontWeight.w400),
    ),
  );

  static ThemeData darkTheme = ThemeData();
}
