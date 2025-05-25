import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 15, 23, 41),
  splashFactory: NoSplash.splashFactory,
  fontFamily: 'Inter',
  textTheme: TextTheme(
    labelLarge: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w800,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      color: Colors.grey[400],
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 15, 23, 41),
    selectedItemColor: Color.fromARGB(255, 60, 130, 243),
    unselectedItemColor: Colors.grey[500],
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
  ),
  dividerTheme: DividerThemeData(
    color: Color.fromARGB(255, 24, 45, 95),
    space: 1,
  ),
);
