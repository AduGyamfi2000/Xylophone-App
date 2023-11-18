import 'package:flutter/material.dart';
import 'sound.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Xylophone App",
      home: Sound(),
    );
  }
}