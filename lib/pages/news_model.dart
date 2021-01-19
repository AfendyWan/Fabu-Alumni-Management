import 'package:flutter/foundation.dart';

class News{

  final int newsId;
  final String newsTitle;
  final String newsCategory;
  final String newsArticle;
  final String newsWebsite;

  News({
    @required this.newsId,
    @required this.newsTitle,
    @required this.newsCategory,
    @required this.newsArticle,
    @required this.newsWebsite,
  });

  factory News.fromJson(Map<String, dynamic> json){
    return News(
      newsId: json['newsId'] as int,
      newsTitle: json['newsTitle'] as String,
      newsCategory: json['newsCategory'] as String,
      newsArticle: json['newsArticle'] as String,
      newsWebsite: json['newsWebsite'] as String,
    );
  }
}