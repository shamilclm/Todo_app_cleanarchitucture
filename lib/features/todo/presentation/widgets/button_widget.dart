import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todocleamarcitucture/features/todo/presentation/providers/todo_provider.dart';

class Button extends ConsumerWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: () {
          ref.read(todosProvider.notifier).addTodo();
        },
        child: Text("add"));
  }
}
