import 'package:flutter/material.dart';
import 'package:gozem_clone/features/home/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Gozem Clone", home: HomeScreen());
  }
}
