import 'package:flutter/material.dart';
import 'package:main_app/gradient_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientContainer([Colors.blue , Colors.white , Colors.blueGrey])),
    ),
  );
}



