import 'package:clicker/clicker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClickerApp());
}

class ClickerApp extends StatelessWidget {
  const ClickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clicker App',
      home: Clicker(),
    );
  }
}
