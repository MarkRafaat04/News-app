
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

class CategoryCard extends StatelessWidget{
  final CategoryModel category;
  CategoryCard({required this.category});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:10),
      child: Container(
          height:90,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(category.image),
                fit:BoxFit.fill,
              )
          ),
          child: Center(
            child: Text(category.categoryName,style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight:FontWeight.bold,
            )),
          )
      ),
    );
  }

}