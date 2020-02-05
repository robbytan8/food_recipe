import 'package:flutter/material.dart';
import 'package:food_recipe/entity/food_item.dart';

class DetailScreen extends StatelessWidget {
    DetailScreen({Key key, this.item}) : super(key: key);
    final FoodItem item;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Detail Bahan Makanan'),
                leading: IconButton(icon:Icon(Icons.arrow_back),
                    onPressed:() => Navigator.pop(context, false),
                )
            ),
            body: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Image.asset(item.imagePath),
                      Text(item.name),
                      Text(item.description)
                    ],
                  )
                ),
            ),
        );
    }
}