import 'package:flutter/material.dart';
import 'package:hotel_app/features/main_screen/MainScreen.dart';
import 'package:hotel_app/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreenNew(),
    );
  }
}
