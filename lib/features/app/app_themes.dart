import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white, appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    toolbarTextStyle: TextStyle(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  );
}
