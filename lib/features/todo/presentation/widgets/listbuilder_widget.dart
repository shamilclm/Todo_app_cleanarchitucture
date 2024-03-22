import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todocleamarcitucture/features/todo/presentation/providers/todo_provider.dart';

class Listview extends ConsumerWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: ref.watch(todosProvider).length,
      itemBuilder: (context, index) => ListTile(
        title: Text(ref.watch(todosProvider)[index].todos ?? 'nvn'),
      ),
    );
  }
}
