import 'package:flutter/material.dart';
import 'package:kelsey_website/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kelsey Jo Design',
      home: HomePage(),
    );
  }
}

