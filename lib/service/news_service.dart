import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=634dfe10be4e401585fa234e123909de&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (int i = 0; i < articles.length; i++) {
        ArticleModel articleModel = ArticleModel(
          image: articles[i]["urlToImage"],
          title: articles[i]["title"],
          subTitle: articles[i]["description"],
          url: articles[i]["url"],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
