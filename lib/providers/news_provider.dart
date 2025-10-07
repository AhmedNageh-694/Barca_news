import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/services/news_services.dart';

class NewsProvider extends ChangeNotifier {
  final NewsServices _services;
  List<ArticleModel> articles = [];
  bool isLoading = true;

  NewsProvider([NewsServices? services])
    : _services = services ?? NewsServices(Dio()) {
    // fetch on creation
    fetchSportsNews();
  }

  Future<void> fetchSportsNews() async {
    isLoading = true;
    notifyListeners();
    try {
      final result = await _services.getSportsNews();
      articles = result;
    } catch (_) {
      articles = [];
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
