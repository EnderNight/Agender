import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/agender_item.dart';

class AgenderItemWidget extends StatelessWidget {
  final AgenderItem item;

  const AgenderItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.circle_outlined),
      ),
      title: Text(item.title),
      subtitle: Text(DateFormat('MMMM dd').format(item.dueDate)),
    );
  }
}
