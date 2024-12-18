import 'package:flutter/material.dart';

import 'view/home_view.dart';

void main() async{
  // NewsService().getNews;
  runApp(const NewsAppa());
}

class NewsAppa extends StatelessWidget {
  const NewsAppa({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
