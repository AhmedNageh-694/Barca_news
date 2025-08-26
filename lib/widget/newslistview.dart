import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widget/newstile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  @override
  void initState()  {
     getnews();
    super.initState();
  }

  Future<void> getnews() async {
     articles = await NewsServices(Dio()).getSportsNews();
     setState(() {
       
     });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (context, index) {
        return Newstile(
          articleModel: articles[index],
        );
      }),
    );
  }
}
