

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'light_theme.g.dart';

final _lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme()
);

@riverpod
ThemeData light (LightRef ref){
  return _lightTheme;
}