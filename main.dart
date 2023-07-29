import 'package:flutter/material.dart';
import 'Gradient_Container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(244, 228, 146, 14),
          Color.fromARGB(169, 245, 213, 123),
          Color.fromARGB(66, 214, 208, 183),
        ]),
      ),
    ),
  );
}
