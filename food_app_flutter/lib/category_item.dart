import 'package:flutter/material.dart';
import 'package:food_app_flutter/models/category.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 2)),
          Text(this.category.content,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
        ],
      ),
      decoration: BoxDecoration(
        color: this.category.color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}