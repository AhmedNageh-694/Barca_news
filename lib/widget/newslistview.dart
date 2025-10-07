import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/widget/newstile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key,required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Newstile(articleModel: articles[index]);
      }),
    );
  }
}
