
import 'package:todocleamarcitucture/features/todo/data/models/todo_model.dart';
import 'package:todocleamarcitucture/features/todo/domain/entity/todo_entity.dart';

abstract class TodoDataRepository{
  Future<void>addtodo(TodoEntity todo);
  Future<void>updatetodo(TodoEntity todo);
  Future<void>deletetodo(int index);
  List<Todo> getTodo();
}