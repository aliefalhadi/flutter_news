// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  int status;
  String message;
  List<Article> article;

  NewsModel({
    this.status,
    this.message,
    this.article,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    status: json["status"],
    message: json["message"],
    article: List<Article>.from(json["article"].map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "article": List<dynamic>.from(article.map((x) => x.toJson())),
  };
}

class Article {
  String idNews;
  String titleNews;
  String contentNews;
  String imageNews;
  DateTime dateNews;

  Article({
    this.idNews,
    this.titleNews,
    this.contentNews,
    this.imageNews,
    this.dateNews,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    idNews: json["id_news"],
    titleNews: json["title_news"],
    contentNews: json["content_news"],
    imageNews: json["image_news"],
    dateNews: DateTime.parse(json["date_news"]),
  );

  Map<String, dynamic> toJson() => {
    "id_news": idNews,
    "title_news": titleNews,
    "content_news": contentNews,
    "image_news": imageNews,
    "date_news": "${dateNews.year.toString().padLeft(4, '0')}-${dateNews.month.toString().padLeft(2, '0')}-${dateNews.day.toString().padLeft(2, '0')}",
  };
}
