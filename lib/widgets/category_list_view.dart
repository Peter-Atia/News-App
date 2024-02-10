import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
        imageUrl: "assets/images/business.jpg", categoryName: "Business"),
    CategoryModel(
        imageUrl: "assets/images/entertainment.jpg",
        categoryName: "Entertainment"),
    CategoryModel(
        imageUrl: "assets/images/general.jpg", categoryName: "General"),
    CategoryModel(imageUrl: "assets/images/health.jpg", categoryName: "Health"),
    CategoryModel(
        imageUrl: "assets/images/science.avif", categoryName: "Science"),
    CategoryModel(imageUrl: "assets/images/sports.jpg", categoryName: "Sports"),
    CategoryModel(
        imageUrl: "assets/images/technology.jpg", categoryName: "Technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(model: categories[index]);
          }),
    );
  }
}
