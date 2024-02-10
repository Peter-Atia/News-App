import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange),
              )
            ],
          ),
        ),
        body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: CategoryListView()),
                NewsListViewBuilder(category: "general"),
              ],
            )));
  }
}
