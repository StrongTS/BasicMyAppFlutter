import 'package:flutter/material.dart';
import 'page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
