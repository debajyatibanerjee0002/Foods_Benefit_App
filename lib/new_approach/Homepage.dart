import 'package:flutter/material.dart';
import 'package:food_app/food_list.dart';
import 'package:food_app/new_approach/food_description.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: allList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              child: ListTile(
                title: Center(
                    child: Text(
                  allList[index].name,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                )),
                leading: Hero(
                  tag: allList[index].pic,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(allList[index].pic),
                    backgroundColor: Colors.grey[200],
                    maxRadius: 30.0,
                    //child: Image.asset(allList[index].pic),
                  ),
                ),
                // subtitle: Text(allList[index].benefit),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FoodDescription(
                      myDesc: allList[index],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
