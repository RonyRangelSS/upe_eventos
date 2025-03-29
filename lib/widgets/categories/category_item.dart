import 'package:flutter/material.dart';
import 'package:upe_eventos/models/category.dart';

class CategoryItem  extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: category.color,
          ),
          child: category.icon,
        ),
        Text(category.title),
      ],
    );
  }
}
