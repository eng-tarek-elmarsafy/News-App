import 'package:flutter/material.dart';

import '../models/category_item_model.dart';
import 'category_item.dart';

class ListViewOfCategoryItem extends StatelessWidget {
  ListViewOfCategoryItem({super.key});
  List<CategoryItemModel> itemCategoryList = const [
    CategoryItemModel(
      image: 'assets/business.avif',
      text: 'Business',
      category: 'business',
    ),
    CategoryItemModel(
      image: 'assets/entertaiment.avif',
      text: 'Entertaiment',
      category: 'entertainment',
    ),
    CategoryItemModel(
      image: 'assets/general.avif',
      text: 'General',
      category: 'general',
    ),
    CategoryItemModel(
      image: 'assets/health.avif',
      text: 'Health',
      category: 'health',
    ),
    CategoryItemModel(
      image: 'assets/science.avif',
      text: 'Science',
      category: 'science',
    ),
    CategoryItemModel(
      image: 'assets/sports.avif',
      text: 'Sports',
      category: 'sports',
    ),
    CategoryItemModel(
      image: 'assets/technology.jpeg',
      text: 'Technology',
      category: 'technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCategoryList.length,
        itemBuilder: (context, index) => CategoryItem(
          itemModel: itemCategoryList[index],
        ),
      ),
    );
  }
}
