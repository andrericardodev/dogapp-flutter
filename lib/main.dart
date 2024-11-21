import 'package:flutter/material.dart';
import 'screens/dog_page.dart';

void main() => runApp(DogApp());

class DogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dog App',
      home: DogPage(),
    );
  }
}