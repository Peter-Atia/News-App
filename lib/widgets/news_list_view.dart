import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news__tile.dart';
class NewsListView extends StatelessWidget {
  const NewsListView({super.key , required this.news});
  final List < ArticleModel> news;
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: news.length,
                (context, index) {
            for (int i = index; i < news.length;) {
              if (news[i].image == null) {
                return Container();
              }
              break;
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: NewsTile(model: news[index]),
            );
          }));
  }
}
