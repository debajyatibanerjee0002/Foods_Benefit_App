//1

import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';
import 'package:food_app/new_approach/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
