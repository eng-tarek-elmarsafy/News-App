import 'package:flutter/widgets.dart';

import '../models/category_news_model.dart';
import 'category_news.dart';

class NewsLiistViewSlv extends StatelessWidget {
  const NewsLiistViewSlv({
    super.key,
    required this.info,
  });

  final List<CategoryNewsModel> info;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: info.length,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.all(5),
        child: CategoryNews(
          newsModel: info[index],
        ),
      ),
    );
  }
}
