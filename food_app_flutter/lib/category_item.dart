import 'package:flutter/material.dart';
import 'package:food_app_flutter/foods_page.dart';
import 'package:food_app_flutter/models/category.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return InkWell( // InkWell cho tap vao doi tuong tren man hinh
      onTap: () {
        // Chuyen doi man hinh
        // Cach 1
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FoodsPage(this.category)
            ),
        );
        // Cach 2
        // Navigator.pushNamed(context, '/FoodsPage', arguments: {'category': category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 2)),
            Text(this.category.content,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: this.category.color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}