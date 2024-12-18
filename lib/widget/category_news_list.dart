// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:news_app/models/category_news_model.dart';
import '../Service/news_service.dart';
import 'news_list_view_slv.dart';

class CategoryNewsList extends StatefulWidget {
  final String category;
  const CategoryNewsList({super.key, required this.category});

  @override
  State<CategoryNewsList> createState() => _CategoryNewsListState();
}

class _CategoryNewsListState extends State<CategoryNewsList> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService().json(general: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryNewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsLiistViewSlv(
            info: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const Text('Opss Error');
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          LinearProgressIndicator(
            minHeight: 250,
            color: Color.fromARGB(255, 206, 202, 202),
          ),
          SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            minHeight: 250,
            color: Color.fromARGB(255, 206, 202, 202),
          ),
          SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            minHeight: 250,
            color: Color.fromARGB(255, 206, 202, 202),
          ),
          SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            minHeight: 250,
            color: Color.fromARGB(255, 206, 202, 202),
          ),
          SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            minHeight: 250,
            color: Color.fromARGB(255, 206, 202, 202),
          ),
        ],
      ),
    );
  }
}
