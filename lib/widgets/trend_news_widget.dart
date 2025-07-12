import 'package:flutter/material.dart';
import 'package:news/core/constants/responsive_size.dart';
import 'package:news/models/news_model.dart';

class TrendNewsWidget extends StatelessWidget {
  
  const TrendNewsWidget({super.key, required this.trendNews, });
    final List<NewsModel> trendNews ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height:ResponsiveSize.isTablet(context) ?  ResponsiveSize.getResponsiveHeight(context,0.3) : ResponsiveSize.getResponsiveHeight(context,0.2),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: trendNews.length,
          itemBuilder: (context, index) {
            return NewsWidget(newsModel: trendNews[index]);
          },
        ),
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
    required this.newsModel,
  });

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveSize.isTablet(context) ?  ResponsiveSize.getResponsiveWidth(context,0.4) : ResponsiveSize.getResponsiveWidth(context,0.6),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            
            newsModel.image ?? "",
          
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
    
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withValues(alpha: 0.2),
              Colors.black.withValues(alpha: 0.8),
            ],
          ),
        ),
    
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10,
              ),
              child: Text(
               newsModel.title??'',
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
