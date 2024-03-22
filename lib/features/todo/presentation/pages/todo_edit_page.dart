import 'package:flutter/material.dart';
import 'package:todocleamarcitucture/core/constants/todo/todo_constants.dart';
import 'package:todocleamarcitucture/features/todo/presentation/widgets/listbuilder_widget.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Todoconstants.todoedittitle),
        centerTitle: true,
      ),
      body: const Listview(),
    );
  }
}
