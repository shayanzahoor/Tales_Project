import 'package:flutter/material.dart';
import 'package:wondertales/Views/Story_Screen/Play_Story.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Play_Story(),
    );
  }
}
