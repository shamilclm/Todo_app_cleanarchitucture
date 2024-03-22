import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todocleamarcitucture/core/objectbox/todo_object.dart';
import 'package:todocleamarcitucture/features/todo/data/datasourcestodo/data_source.dart';
import 'package:todocleamarcitucture/features/todo/data/models/todo_model.dart';
part 'data_source_impl.g.dart';
class TodoDataSourceImpl implements TodoDataSource {
  final box = ObjectBox.instance.todoBox;
  @override
  Future<void> addtodo(Todo todo) async {
    box.put(todo);
  }

  @override
  Future<void> updatetodo(Todo todo) async {
    box.getAll();
  }

  @override
  Future<void> deletetodo(int index) async {
    box.remove(index);
  }

  @override
   List<Todo> getTodo() {
   return box.getAll();
  }
}

@riverpod 
TodoDataSource todoDatasource(TodoDatasourceRef ref){
  return TodoDataSourceImpl();
}
