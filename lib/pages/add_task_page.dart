import 'package:flutter/material.dart';

import '../forms/task_form.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add task"),
      ),
      body: const TaskForm(),
    );
  }
}
