import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todocleamarcitucture/core/constants/todo/todo_constants.dart';
import 'package:todocleamarcitucture/features/todo/presentation/providers/todo_provider.dart';

class TextfieldWidget extends ConsumerWidget {
  const TextfieldWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return SizedBox(
        width: 400,
        height: 70,
        child: TextField(
          controller: ref.read(todosProvider.notifier).todoController,
          decoration: InputDecoration(
              fillColor: Colors.blueGrey,
              filled: true,
              labelText: Todoconstants.textfield,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
        ));
  }
}
