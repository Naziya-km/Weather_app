import 'package:flutter/material.dart';
import 'package:weatherapp/weather.dart';

void main() {
  runApp(const weather());
}

class weather extends StatelessWidget {
  const weather({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: design(),
    );
  }
}
