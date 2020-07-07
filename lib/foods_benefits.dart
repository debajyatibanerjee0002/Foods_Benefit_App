//6

import 'package:flutter/material.dart';
import 'package:food_app/list.dart';
import 'package:food_app/web_page.dart';

class Benefits extends StatelessWidget {
  final FoodList mylist;
  // create a constructor
  Benefits({this.mylist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Benefits'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          // now print the value of 'benefit'
          child: Text(
            '${mylist.benefit}',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      // this is extended floating-action-button
      floatingActionButton: FloatingActionButton.extended(
        // navigate to go to the next page
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => WebPage())),
        // label property for text
        label: Row(
          children: <Widget>[
            Text(
              'More',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.add_circle)
          ],
        ),
      ),
    );
  }
}
