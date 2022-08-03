import 'package:flutter/material.dart';
import 'package:food_app_flutter/foods_page.dart';
import 'categories_page.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Food Categories', style: TextStyle(fontSize: 20),),
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: CategoriesPage()),
        )
      ),
    );
  }
}