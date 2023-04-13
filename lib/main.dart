import 'package:flutter/material.dart';
import 'package:vtuber/view/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'V-tuber',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}

