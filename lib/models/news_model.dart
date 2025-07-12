import 'package:news/core/database/api/end_points.dart';

class NewsModel {
  final String image;
  final String title;
  final String? subTitle;
  final String url;
  const NewsModel({
    required this.image,
    required this.title,
    this.subTitle,
    required this.url,
  });
  factory NewsModel.formJson(json) {
    return NewsModel(
      image: json[ApiKeys.image],
      title: json[ApiKeys.title],
      subTitle: json[ApiKeys.subTitle],
      url: json[ApiKeys.url],
    );
  }
}
