import 'package:agender/pages/add_task_page.dart';
import 'package:flutter/material.dart';

import '../data/agender_task.dart';
import '../widgets/agender_task_widget.dart';

class AgenderHomePage extends StatefulWidget {
  const AgenderHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _AgenderHomePageState();
}

class _AgenderHomePageState extends State<AgenderHomePage> {
  List<AgenderTask> items = [
    AgenderTask(
      title: "Faire courses",
      description: "Acheter pain et pate",
      dueDate: DateTime.now(),
      done: false,
    ),
    AgenderTask(
      title: "Faire ménage",
      description: "Passer aspi et ranger",
      dueDate: DateTime.now(),
      done: true,
    ),
  ];

  void onToggleDone(int index) {
    setState(() {
      items[index].toggleDone();
    });
  }

  void onAddTask() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AddTaskPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return AgenderItemWidget(
            item: items[index],
            onToggleDone: () => onToggleDone(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onAddTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
