import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';

class NewsByCategoryWidget extends StatelessWidget {
  final NewsModel newsModel;
  const NewsByCategoryWidget({
    super.key, required this.newsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  newsModel.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                 newsModel.subTitle ?? "",
                  style: TextStyle(fontSize: 12),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
    
            
            Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  newsModel.image
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
