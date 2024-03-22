import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todocleamarcitucture/features/todo/data/models/todo_model.dart';
import 'package:todocleamarcitucture/features/todo/data/reositories/todo_repositorei_impl.dart';
import 'package:todocleamarcitucture/features/todo/domain/repositorie/todo_repositorei.dart';
import 'package:todocleamarcitucture/features/todo/domain/usecases/todo_add.dart';
part 'todo_provider.g.dart';

@riverpod
class Todos extends _$Todos {
  late final TextEditingController todoController;
  late TodoDataRepository repository;
  @override
  List<Todo> build() {
    todoController = TextEditingController();
    repository = ref.watch(todoDataRepositoryProvider);
    ref.onDispose(dispose);
    return repository.getTodo();
  }

  void dispose() {
    todoController.dispose();
  }

  Future<String?> addTodo() async {
    try {
      final title = todoController.text;
      await AddTodoUsecase(repository: repository)(
          ischeked: false, title: title);
      state = repository.getTodo();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
