import 'package:flutter/material.dart';
import 'package:news_app/models/category_news_model.dart';

import 'icons_of_category_news.dart';

class CategoryNews extends StatelessWidget {
  final CategoryNewsModel newsModel;
  const CategoryNews({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              // color: Colors.grey,
              child: Image.network(
                newsModel.newsImage!,

                height: 250,
                fit: BoxFit.fill,
                // width: double.infinity,
              ),
            )),
        Text(
          newsModel.titl!,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          newsModel.description ?? '',
          style: const TextStyle(
            fontSize: 15,
          ),
          // maxLines: 2,
          // overflow: TextOverflow.ellipsis,
        ),
        const IconsOfCategoryNews(),
      ],
    );
  }
}
