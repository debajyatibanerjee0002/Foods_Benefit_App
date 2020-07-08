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
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/${mylist.pic}'),
              maxRadius: 60.0,
            ),
            Text(
              mylist.name,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40.0,
            ),
            Divider(
              color: Colors.black,
              thickness: 2.0,
              endIndent: 50.0,
              indent: 50.0,
            ),
            SizedBox(
              height: 70.0,
            ),
            Center(
              // now print the value of 'benefit'
              child: Text(
                '${mylist.benefit}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
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
