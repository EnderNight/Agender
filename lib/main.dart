import 'package:flutter/material.dart';

import 'pages/agender_home_page.dart';

void main() {
  runApp(const AgenderApp());
}

class AgenderApp extends StatelessWidget {
  const AgenderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const AgenderHomePage(),
    );
  }
}
