import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:news_app/widget/newslistview.dart';

class Newslistviewbulider extends StatelessWidget {
  const Newslistviewbulider({super.key});

  @override
  Widget build(BuildContext context) {
    final news = context.watch<NewsProvider>();
    if (news.isLoading) {
      return const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return NewsListView(articles: news.articles);
  }
}
