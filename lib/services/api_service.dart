import 'package:dio/dio.dart';
import 'package:news/core/database/api/app_interceptor.dart';
import 'package:news/core/database/api/end_points.dart';
import 'package:news/models/news_model.dart';

class ApiService {
  final Dio dio = Dio();

   ApiService(){    
   dio.interceptors.add(AppInterceptor());
   }

  Future<List<NewsModel>> getNewsByCategory(String category ) async {
    final url = "${EndPoints.baserUrl}${EndPoints.endPointCategory}apiKey=${EndPoints.apiKey}&language=en&q=$category";
    try {
      final response = await dio.get(url);
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      return articles.map((article) => NewsModel.formJson(article)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
  Future<List<NewsModel>> getTrendNews( ) async {
    final url = "${EndPoints.baserUrl}${EndPoints.endPointTrend}country=us&category=business&apiKey=${EndPoints.apiKey}";
    try {
      final response = await dio.get(url);
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      return articles.map((article) => NewsModel.formJson(article)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
