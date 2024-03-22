

import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_entity.freezed.dart';
@freezed
class TodoEntity with _$TodoEntity{
  factory TodoEntity({
    required String title,
    required bool ischeked,
    required int id,
  })=_TodoEntity;
}