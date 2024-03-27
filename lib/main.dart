import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final Color backgroundColor = const Color(0xFFE7626C);
  final Color textColor = const Color(0xFF232B55);
  final Color cardColor = const Color(0xFFF4EDDB);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(),
      ),
    );
  }
}
