import 'package:dio/dio.dart';
import 'package:news_app/models/category_news_model.dart';

class NewsService {
  Dio dio = Dio();
  NewsService();

  Future<List<CategoryNewsModel>> json({required String general}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6f77318bc9194d369e858dc2a67161bc&category=$general');
    Map<String, dynamic> mapService = response.data;
    List<dynamic> articlesGetApi = mapService['articles'];

    List<CategoryNewsModel> articles = [];

    for (var article in articlesGetApi) {
      CategoryNewsModel articleOpject = CategoryNewsModel.fromjson(article);

      articleOpject.newsImage != null ? articles.add(articleOpject) : null;
    }
    return articles;
  }
}
