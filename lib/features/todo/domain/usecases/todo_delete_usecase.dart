
import 'dart:developer';

import 'package:todocleamarcitucture/features/todo/domain/repositorie/todo_repositorei.dart';

final class DeleteTodoUsecase{
  final TodoDataRepository repository;

  DeleteTodoUsecase({required this.repository});

  Future<void> call ({required int id})async{
    try {
     repository.deletetodo(id);
    } catch (e) {
      log(e.toString());
    }
  }
}