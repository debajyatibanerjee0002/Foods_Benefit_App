//5

import 'package:flutter/material.dart';
import 'package:food_app/list.dart';
import 'package:food_app/foods_benefits.dart';

// create a StateLess widget
class FoodCard extends StatelessWidget {
  final FoodList foods;

  FoodCard({this.foods});

  @override
  Widget build(BuildContext context) {
    // create cards
    return Card(
      shadowColor: Colors.teal[300],
      elevation: 15.0,
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 8.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // create CircleAvatar for the pictures
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/${foods.pic}'),
                    maxRadius: 25.0,
                  ),
                ),

                // give space
                SizedBox(
                  width: 20.0,
                ),

                // it represent the name of the food
                Text(
                  foods.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            // create a flat button to go to next page
            FlatButton.icon(
              // now navigate the next page
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      // pass the variable to next page
                      builder: (context) => Benefits(
                            mylist: foods,
                          ))),
              label: Text('Know more'),
              icon: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
