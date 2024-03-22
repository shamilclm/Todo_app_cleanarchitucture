import 'package:flutter/material.dart';
import 'package:todocleamarcitucture/core/theme/todo_theme.dart';
import 'package:todocleamarcitucture/features/todo/presentation/pages/todo_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ref.watch(mythemeProvider),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const Todopage(),
    );
  }
}
