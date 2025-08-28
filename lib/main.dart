import 'package:commerce_20250828/screen/main/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Commerce SMWU",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MainScreen(),
    );
  }
}
