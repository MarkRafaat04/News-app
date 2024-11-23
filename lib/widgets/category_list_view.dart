
import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget{
  @override
  List <CategoryModel> categories=const
  [
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),

  ];
  Widget build(BuildContext context) {
    return SizedBox(
        height:90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryCard(category: categories[index]);
          },

        )
    );
  }

}