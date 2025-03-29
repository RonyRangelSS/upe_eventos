import 'package:flutter/material.dart';
import 'package:upe_eventos/models/category.dart';
import 'package:upe_eventos/widgets/categories/category_item.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key, required this.categoryList});

  final List<Category> categoryList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(8),
        itemBuilder:
            (ctx, index) => CategoryItem(category: categoryList[index]));
  }
}
