import 'package:flutter/material.dart';
import 'package:news_app/models/category_item_model.dart';

import '../view/news_view.dart';

class CategoryItem extends StatelessWidget {
  // final String image;
  // final String text;
  final CategoryItemModel itemModel;
  const CategoryItem({
    super.key,
    required this.itemModel,
    // required this.image,
    // required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  NewsView(category: itemModel.category,),
            ),
          );
        },
        child: Container(
          width: 210,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(itemModel.image),
            ),
          ),
          child: Center(
            child: Text(
              itemModel.text,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
