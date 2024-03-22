

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todocleamarcitucture/features/todo/data/datasourcestodo/data_source.dart';
import 'package:todocleamarcitucture/features/todo/data/datasourcestodo/data_source_impl.dart';
import 'package:todocleamarcitucture/features/todo/data/models/todo_model.dart';
import 'package:todocleamarcitucture/features/todo/domain/entity/todo_entity.dart';
import 'package:todocleamarcitucture/features/todo/domain/repositorie/todo_repositorei.dart';
part 'todo_repositorei_impl.g.dart';
class TodoDataRepositoryImpl implements TodoDataRepository {
  final TodoDataSource dataSource;

  TodoDataRepositoryImpl({required this.dataSource});
  @override
  Future<void> addtodo(TodoEntity todo) async {
   final addToTodo=Todo(todos: todo.title, ischeked: todo.ischeked);
   await dataSource.addtodo(addToTodo);
  }

  @override
  Future<void> updatetodo(TodoEntity todo) async {
   await dataSource.updatetodo(Todo(todos: todo.title, ischeked: todo.ischeked));
  }

  @override
  Future<void> deletetodo(int index) async {
    await dataSource.deletetodo(index);
  }
 
  @override
   List<Todo> getTodo() {
   return dataSource.getTodo();
  }
}
 @riverpod 
 TodoDataRepository todoDataRepository(TodoDataRepositoryRef ref){
  return TodoDataRepositoryImpl(dataSource: ref.watch(todoDatasourceProvider));
 }