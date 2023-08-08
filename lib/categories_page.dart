import 'package:demoappst/category_item.dart';
import 'package:demoappst/fake_data.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  Widget build (BuildContext context) {
    return GridView(
      children: FAKE_CATEGORIES.map((eachCategory) => CategoryItem(category: eachCategory)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),
    );
  }
}