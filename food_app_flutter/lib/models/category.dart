import 'package:flutter/material.dart';
class Category {
  int id;
  String content;
  Color color;

  Category(this.id, this.content, this.color);

  @override
  String toString() {
    return '${this.id} - ${this.content} - ${this.color}';
  }
}