import 'package:flutter/material.dart';

import '../data/agender_item.dart';
import '../widgets/agender_item_widget.dart';

class AgenderHomePage extends StatelessWidget {
  const AgenderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<AgenderItem> items = [
      AgenderItem(
        title: "Faire courses",
        description: "Acheter pain et pate",
        dueDate: DateTime.now(),
        done: false,
      ),
      AgenderItem(
        title: "Faire ménage",
        description: "Passer aspi et ranger",
        dueDate: DateTime.now(),
        done: true,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return AgenderItemWidget(item: items[index]);
        },
      ),
    );
  }
}
