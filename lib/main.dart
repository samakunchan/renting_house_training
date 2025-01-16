import 'package:flutter/material.dart';
import 'package:renting_house_training/core/constantes.dart';
import 'package:renting_house_training/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kThemeData,
      home: const Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}
