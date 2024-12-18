class CategoryNewsModel {
  final String? newsImage;
  final String? titl;
  final String? description;
  const CategoryNewsModel({
    required this.newsImage,
    required this.titl,
    required this.description,
  });

  factory CategoryNewsModel.fromjson(json) => CategoryNewsModel(
      newsImage: json['urlToImage'],
      titl: json['title'],
      description: json['description']);
}
