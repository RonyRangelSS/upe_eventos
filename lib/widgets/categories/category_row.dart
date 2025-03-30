import 'package:flutter/material.dart';
import 'package:upe_eventos/models/category.dart';
import 'package:upe_eventos/widgets/categories/category_item.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key, required this.categoryList});

  final List<Category> categoryList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18 ,vertical: 22),
      child: ListView.builder(
            itemCount: categoryList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (ctx, index) => CategoryItem(category: categoryList[index])
      ),
    );
  }
}
