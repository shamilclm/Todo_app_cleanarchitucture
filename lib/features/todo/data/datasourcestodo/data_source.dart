import 'package:todocleamarcitucture/features/todo/data/models/todo_model.dart';

abstract class TodoDataSource{
  Future<void>addtodo(Todo todo);
  Future<void>updatetodo(Todo todo);
  Future<void>deletetodo(int index);
  List<Todo> getTodo();
}