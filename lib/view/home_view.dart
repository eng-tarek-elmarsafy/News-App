import 'package:flutter/material.dart';
import '../widget/app_bar_titil.dart';
import '../widget/category_news_list.dart';
import '../widget/list_view_of_category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitil(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListViewOfCategoryItem(),
            ),
          ),
          const CategoryNewsList(category: 'general',),
        ],
      ),
    );
  }
}
