import 'package:flutter/material.dart';
import '../widget/category_news_list.dart';

class NewsView extends StatelessWidget {
  final String category;
  const NewsView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          CategoryNewsList(category: category,),
        ],
      ),
    );
  }
}
