
import 'dart:developer';

import 'package:todocleamarcitucture/features/todo/domain/repositorie/todo_repositorei.dart';

final class GetTodoUsecase{
  final TodoDataRepository repository;

  GetTodoUsecase({required this.repository});

  Future<void> call ({required int id})async{
    try {
     repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
  }
}