import 'package:flutter/material.dart';
import 'package:food_recipe/data/food_data.dart';
import 'package:food_recipe/detail_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Food Recipes',
      home: new Scaffold(
          appBar: new AppBar(
            title: const Text('Bahan Makanan'),
          ),
          body: GridView.builder(
            itemCount: FoodData().foodItems.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  item: FoodData().foodItems[index],
                                )));
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image.asset(FoodData().foodItems[index].imagePath),
                            height: 165,
                          ),
                          Text(FoodData().foodItems[index].name),
                        ],
                      )),
                ),
              );
            },
          )),
    );
  }
}
