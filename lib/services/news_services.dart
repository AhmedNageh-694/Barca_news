import 'package:dio/dio.dart';
import 'package:news_app/models/articlemodel.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  static const String _apiKey = 'ae693838985d492ebc1de831211a4242';
  static const String _query = 'fcbarcelona';
  static const String _language = 'en';

  Future<List<ArticleModel>> getSportsNews() async {
    final url =
        'https://newsapi.org/v2/everything?q=$_query&apiKey=$_apiKey&language=$_language';

    try {
      final response = await dio.get(url);
      if (response.statusCode != 200) {
        return [];
      }

      final data = response.data;
      if (data is! Map<String, dynamic>) {
        return [];
      }

      final List<dynamic> rawArticles =
          (data['articles'] as List<dynamic>?) ?? [];

      final List<ArticleModel> articlesList =
          rawArticles.map((dynamic item) {
            final Map<String, dynamic> map =
                (item is Map<String, dynamic>) ? item : {};
            final String? image = map['urlToImage'] as String?;
            final String title =
                (map['title'] as String?)?.trim() ?? 'No title';
            final String? subtitle = map['description'] as String?;

            return ArticleModel(image: image, titel: title, suptitel: subtitle);
          }).toList();

      return articlesList;
    } on DioException {
      return [];
    } catch (e) {
      return [];
    }
  }
}
