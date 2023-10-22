import 'package:flutter/material.dart';
import 'package:math_research/pages/mainPage.dart';

void main() {
  runApp(const CataNova());
}

class CataNova extends StatelessWidget {
  const CataNova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}
