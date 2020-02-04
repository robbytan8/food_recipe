import 'package:flutter/material.dart';
import 'package:food_recipe/detail_screen.dart';
import 'package:food_recipe/entity/FoodItem.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    List<FoodItem> foodItems = [
    FoodItem('Avocado',
        'The avocado, a tree with probable origin in south-central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado, is botanically a large berry containing a single large seed.',
        'assets/images/avocado.png'),
    FoodItem('Beef',
        'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients. Most beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak, while other cuts are processed.',
        'assets/images/beef.png'),
    FoodItem('Chicken',
        'The chicken is a type of domesticated fowl, a subspecies of the red junglefowl. They are one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011. There are more chickens in the world than any other bird or domesticated fowl. Humans keep chickens primarily as a source of food and, less commonly, as pets.',
        'assets/images/chicken.png'),
    FoodItem('Corn',
        'Maize, also known as corn, is a cereal grain first domesticated by indigenous peoples in southern Mexico about 10,000 years ago. The leafy stalk of the plant produces pollen inflorescences and separate ovuliferous inflorescences called ears that yield kernels or seeds, which are fruits.',
        'assets/images/corn.png'),
    FoodItem('Ham',
        'Ham is pork from a leg cut that has been preserved by wet or dry curing, with or without smoking. As a processed meat, the term "ham" includes both whole cuts of meat and ones that have been mechanically formed. Ham is made around the world, including a number of regional specialties, such as Westphalian ham and some varieties of Spanish jamón. ',
        'assets/images/ham.png'),
    FoodItem('Potato',
        'Potatoes are generally grown from seed potatoes, tubers specifically grown to be free from disease and to provide consistent and healthy plants. To be disease free, the areas where seed potatoes are grown are selected with care. In the US, this restricts production of seed potatoes to only 15 states out of all 50 states where potatoes are grown.',
        'assets/images/potato.png'),
    FoodItem('Salmon',
        'Salmon is the common name for several species of ray-finned fish in the family Salmonidae. Other fish in the same family include trout, char, grayling and whitefish. Salmon are native to tributaries of the North Atlantic and Pacific Ocean.',
        'assets/images/salmon.png'),
    FoodItem('Sausages',
        'Sausages are a meat product usually made from ground meat, often pork, beef, or poultry, along with salt, spices and other flavourings. Other ingredients such as grains or breadcrumbs may be included as fillers or extenders. Some sausages include other ingredients for flavour.',
        'assets/images/sausages.png'),
    FoodItem('Spinach',
        'Spinach is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae. Its leaves are a common edible vegetable consumed either fresh, or after storage using preservation techniques by canning, freezing, or dehydration.',
        'assets/images/spinach.png'),
    FoodItem('Tomato',
        'The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America and Central America. The Nahuatl (Aztec language) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived. Its domestication and use as a cultivated food may have originated with the indigenous peoples of Mexico.',
        'assets/images/tomato.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Food Recipes',
      home: new Scaffold(
          appBar: new AppBar(
            title: const Text('Bahan Makanan'),
          ),
          body: GridView.builder(
            itemCount: foodItems.length,
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
                                  item: foodItems[index],
                                )));
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image.asset(foodItems[index].imagePath),
                            height: 165,
                          ),
                          Text(foodItems[index].name),
                        ],
                      )),
                ),
              );
            },
          )),
    );
  }
}
