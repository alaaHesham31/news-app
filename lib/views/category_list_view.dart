import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});


   final List <CategoryModel> categoreis = const [
    CategoryModel(imagePath: 'assets/images/general.jpg', categoryName: 'General'),
    CategoryModel(imagePath: 'assets/images/business.jpg', categoryName: 'Business'),
    CategoryModel(imagePath: 'assets/images/sports.jpg', categoryName: 'Sports'),
    CategoryModel(imagePath: 'assets/images/health.jpg', categoryName: 'Health'),
    CategoryModel(imagePath: 'assets/images/science.jpg', categoryName: 'Science'),
    CategoryModel(imagePath: 'assets/images/technology.jpg', categoryName: 'Technology'),
    CategoryModel(imagePath: 'assets/images/entertainment.jpg', categoryName: 'Entertainment'),


  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoreis.length,
            itemBuilder: (context, index){
            return CategoryCard(
              category: categoreis[index],
            );
          }),
    );
  }
}