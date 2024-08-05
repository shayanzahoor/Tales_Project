import 'package:flutter/material.dart';
import 'package:wondertales/Views/Profile_Screen/Profile_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NextScreen(),
    );
  }
}

