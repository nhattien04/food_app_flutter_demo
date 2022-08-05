import 'package:flutter/material.dart';
import 'package:food_app_flutter/data.dart';
import 'package:food_app_flutter/models/category.dart';
import 'package:food_app_flutter/models/food.dart';
import 'package:food_app_flutter/detail_food_page.dart';
class FoodsPage extends StatelessWidget {
  Category category;
  FoodsPage(this.category);

  @override
  Widget build(BuildContext context) {
    List<Food> foods = FOODS.where((food) => food.categoryId == this.category.id).toList();
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Foods of ${category.content}'),
      ),
      body: Center(
        child: foods.length > 0 ? ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              Food food = foods[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DetailFoodPage(food))
                  );
                },
                child: Stack(
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
                    Positioned(
                      top: 30,
                      left: 30,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black45
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.alarm, color: Colors.white),
                            Text(' ${food.duration.inMinutes} minutes',
                              style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
        ) :
           Center(
             child: Text('No food found!',
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
           )
      ),
    );
  }
}