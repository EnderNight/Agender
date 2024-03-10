import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/agender_task.dart';

class AgenderItemWidget extends StatelessWidget {
  final AgenderTask item;
  final void Function() onToggleDone;

  const AgenderItemWidget({
    super.key,
    required this.item,
    required this.onToggleDone,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: onToggleDone,
        icon: item.done
            ? const Icon(Icons.check_circle)
            : const Icon(Icons.circle_outlined),
      ),
      title: Text(item.title),
      subtitle: Text(DateFormat('MMMM dd').format(item.dueDate)),
    );
  }
}
