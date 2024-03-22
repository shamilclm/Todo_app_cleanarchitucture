
import 'dart:developer';

import 'package:todocleamarcitucture/features/todo/domain/entity/todo_entity.dart';
import 'package:todocleamarcitucture/features/todo/domain/repositorie/todo_repositorei.dart';

final class UpdateTodoUsecase{
  final TodoDataRepository repository;

  UpdateTodoUsecase({required this.repository});

  Future<void> call ({required String title,required bool ischeked,required int id})async{
    try {
      if(title.trim().isEmpty){
        log('title is empty');
      }
      final todo =TodoEntity(title: title, ischeked: ischeked, id: 0);
      repository.updatetodo(todo);
    } catch (e) {
      log(e.toString());
    }
  }
}