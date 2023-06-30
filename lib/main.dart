import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kelsey_website/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBqrkJNn60NlxUw-04to2A-Lni4Qtry9Cs",
        appId: "1:498345059836:web:367befa5a96f5ec5d8be79",
        messagingSenderId: "498345059836",
        projectId: "kelsey-website-b57c2"),
  );
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
