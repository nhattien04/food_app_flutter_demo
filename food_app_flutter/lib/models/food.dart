import 'package:flutter/cupertino.dart';
class Food {
  int id;
  String name;
  String urlName;
  Duration duration;
  Complexity complexity;

  List<String> ingredients = <String>[];
  int categoryId;

  Food(this.id, this.name, this.urlName, this.duration,
      this.complexity,this.ingredients, this.categoryId);

  @override
  String toString() {
    return '${this.name}';
  }
}

enum Complexity {
  Simple,
  Medium,
  Hard
}