

import 'dart:developer';

import 'package:todocleamarcitucture/features/todo/domain/entity/todo_entity.dart';
import 'package:todocleamarcitucture/features/todo/domain/repositorie/todo_repositorei.dart';

final class AddTodoUsecase{
  final TodoDataRepository repository;

  AddTodoUsecase({required this.repository});

  Future<void> call ({required String title,required bool ischeked})async{
    try {
      if(title.trim().isEmpty){
        log('title is empty');
      }
      final todo =TodoEntity(title: title, ischeked: ischeked, id: 0);
      repository.addtodo(todo);
    } catch (e) {
      log(e.toString());
    }
  }
}