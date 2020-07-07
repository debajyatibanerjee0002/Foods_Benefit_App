//2

import 'package:flutter/material.dart';
import 'package:food_app/food_card.dart';
import 'package:food_app/food_list.dart';

// create a StateFull widget
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Scaffole represent the structure
    return Scaffold(
      backgroundColor: Colors.grey[300],

      // App Bar
      appBar: AppBar(
        title: Text('Food list'),
        centerTitle: true,
      ),

      // Body
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            // Now create a map and call the Foodcard methode
            children: allList.map((foods) => FoodCard(foods: foods)).toList(),
          ),
        ),
      ),
    );
  }
}
