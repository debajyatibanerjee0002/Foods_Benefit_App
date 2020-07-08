import 'package:flutter/material.dart';
import 'package:food_app/list.dart';

class FoodDescription extends StatelessWidget {
  final FoodList myDesc;

  const FoodDescription({Key key, this.myDesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Hero(
            tag: myDesc.pic,
            child: Center(
              child: Image.asset(myDesc.pic),
            ),
          ),
          Column(
            children: <Widget>[
              Text("Description: "),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(myDesc.benefit),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
