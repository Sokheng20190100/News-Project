// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  NewsModel({
    this.articles,
  });

  List<Article> articles;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
  };
}

class Article {
  Article({
    this.aid,
    this.title,
    this.subtitle,
    this.desc,
    this.img,
    this.date,
  });

  String aid;
  String title;
  String subtitle;
  String desc;
  String img;
  String date;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    aid: json["aid"],
    title: json["title"],
    subtitle: json["subtitle"],
    desc: json["desc"],
    img: json["img"],
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "aid": aid,
    "title": title,
    "subtitle": subtitle,
    "desc": desc,
    "img": img,
    "date": date,
  };
}
