import 'package:flutter/material.dart';
import 'package:food_app_flutter/models/category.dart';

class FoodsPage extends StatelessWidget {
  Category category;
  FoodsPage(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Foods of ${category.content}'),
      ),
      body: Text('Foods',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}