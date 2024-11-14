import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=462899c3d2b44f11b1a3a0fea7581bcc&category=general');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['atricles'];

    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);

          articleList.add(articleModel);
    }

    return articleList;
  }
}
