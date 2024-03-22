
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dark_theme.g.dart';

final _darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme()
);

@riverpod
ThemeData dark (DarkRef ref){
  return _darkTheme;
}