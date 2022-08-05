import 'package:flutter/material.dart';
import 'package:food_app_flutter/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  Food food;
  DetailFoodPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${food.name}',
          style: TextStyle(fontSize: 20, color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loading.gif',
                  image: food.urlName),
              clipBehavior: Clip.hardEdge,
            ),
          ),
          Text('Ingredients',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.black),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView.builder(
                itemCount: this.food.ingredients.length,
                itemBuilder: (context, index) {
                  String ingredient = this.food.ingredients[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      child: Text('${index + 1}', style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                    title: Text(ingredient, style: TextStyle(fontSize: 18)),
                  );
                }
              ),
            ),
          )
        ],
      ),
    );
  }
}



