import 'package:flutter/material.dart';
import 'package:demoappst/models/category.dart';
class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({required this.category});

  Widget build(BuildContext context) {
    return Container(
      child: Text(this.category.content),
    );
  }
}