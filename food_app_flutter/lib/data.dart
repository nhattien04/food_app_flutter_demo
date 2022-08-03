import 'package:flutter/material.dart';
import './models/category.dart';
import 'models/food.dart';

List<Category> CATEGORIES = [
  Category(1, 'Japan\'s Foods', Colors.orange),
  Category(2, 'Pizza', Colors.teal),
  Category(3, 'Hamburgers', Colors.pinkAccent),
  Category(4, 'Italian', Colors.brown),
  Category(5, 'Vegetables', Colors.green),
  Category(6, 'Milk & Yoghurt', Colors.purple),
];

var FOODS = [
  Food(1, 'Sushi',
      'https://res.cloudinary.com/ou-hcm/image/upload/v1659535795/cach-an-sushi-dung-cach-co-the-ban-chua-biet-1_jn8y3h.jpg',
      Duration(minutes: 25),
      Complexity.Medium,
      ['Sushi-meshi', 'Nori', 'Condiments'],
      1),
  Food(2,
      'Sashimi',
      'https://res.cloudinary.com/ou-hcm/image/upload/v1659539397/sashimi-1_x48sln.jpg',
      Duration(minutes: 20),
      Complexity.Medium, [],
      1),
  Food(3, 'Sashimi',
      'https://res.cloudinary.com/ou-hcm/image/upload/v1659539397/sashimi-1_x48sln.jpg',
      Duration(minutes: 20),
      Complexity.Medium, [],
      1),
  Food(4,
      'Neapolitan pizza',
      'https://res.cloudinary.com/ou-hcm/image/upload/v1659539258/Eq_it-na_pizza-margherita_sep2005_sml_bvljsr.jpg',
      Duration(minutes: 20),
      Complexity.Medium,
      ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms' ],
      2),
  Food(5,
      'Neapolitan pizza',
      'https://res.cloudinary.com/ou-hcm/image/upload/v1659539258/Eq_it-na_pizza-margherita_sep2005_sml_bvljsr.jpg',
      Duration(minutes: 20),
      Complexity.Medium, ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms' ],
      2),
  Food(6,
      'Neapolitan pizza',
      'https://res.cloudinary.com/ou-hcm/image/upload/v1659539258/Eq_it-na_pizza-margherita_sep2005_sml_bvljsr.jpg',
      Duration(minutes: 20),
      Complexity.Medium, ['Fontina cheese', 'Tomato sauce', 'Onions', 'Mushrooms' ],
      2),
];