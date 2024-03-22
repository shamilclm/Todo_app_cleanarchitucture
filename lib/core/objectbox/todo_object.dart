

import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart' as path; 
import 'package:path_provider/path_provider.dart';
import 'package:todocleamarcitucture/features/todo/data/models/todo_model.dart';
import 'package:todocleamarcitucture/objectbox.g.dart';

class ObjectBox{
  static ObjectBox? _instance;
  late final Store store;
  late final Box<Todo>todoBox;


  ObjectBox._create(this.store){
    todoBox=store.box<Todo>();
  }

  static ObjectBox get instance{
    return _instance!;
  }


  static Future<void> create()async{
   if(_instance==null){
    final docsDir =await getApplicationDocumentsDirectory();
    final store =await openStore(directory: path.join(docsDir.path,"todo"));
     _instance=ObjectBox._create(store);
   }
   
  }
}