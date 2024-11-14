import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 85,
            width: 160,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(8),
              image:DecorationImage(image:AssetImage(category.imagePath ), fit: BoxFit.cover),
            ),
            child: Center(child: Text(category.categoryName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          ),
        );
  }
}