import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key , required this.model});
  final ArticleModel model;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            model.image?? "",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),

        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          model.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),

        ),
        Text(
          model.subTitle ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),

        )
      ],
    );
  }
}
