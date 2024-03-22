

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todocleamarcitucture/core/theme/light_theme.dart';
part 'todo_theme.g.dart';

@riverpod
class Mytheme extends _$Mytheme{
  @override
  ThemeData build(){
    return  ref.watch(lightProvider);
  }
  void switchtheme(){
    if(state.brightness==Brightness.light){
   state=ThemeData.dark();
    }else{
      state=ThemeData.light();
    }
  }
}