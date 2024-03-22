import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todocleamarcitucture/core/constants/todo/todo_constants.dart';
import 'package:todocleamarcitucture/core/theme/todo_theme.dart';
import 'package:todocleamarcitucture/features/todo/presentation/pages/todo_edit_page.dart';
import 'package:todocleamarcitucture/features/todo/presentation/widgets/button_widget.dart';
import 'package:todocleamarcitucture/features/todo/presentation/widgets/textfield_widget.dart';

class Todopage extends ConsumerWidget {
  const Todopage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Todoconstants.todotitle),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ref.read(mythemeProvider.notifier).switchtheme();
              },
              icon: Icon(Icons.lightbulb)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Edit()));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextfieldWidget(),
          ),
          Button()
        ],
      ),
    );
  }
}
