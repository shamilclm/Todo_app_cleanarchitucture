
import 'package:objectbox/objectbox.dart';
@Entity()
class Todo{

@Id()
  int id =0;
  String? todos;
  bool? ischeked;
  Todo({required this.todos,required this.ischeked, this.id=0});
}