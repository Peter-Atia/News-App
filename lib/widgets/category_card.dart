import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: model.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12, bottom: 24),
        child: Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(model.imageUrl),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              model.categoryName,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
