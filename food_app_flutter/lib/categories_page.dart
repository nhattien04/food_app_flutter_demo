import 'package:flutter/material.dart';
import 'package:food_app_flutter/category_item.dart';
import 'package:food_app_flutter/data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children:
        CATEGORIES.map((eachCategory) => CategoryItem(eachCategory)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, // Chieu ngang
          childAspectRatio: 3/2, // Ty le chieu ngang / chieu cao
          crossAxisSpacing: 10, // Do rong cua luoi
          mainAxisSpacing: 10
      ),
    );
  }
}