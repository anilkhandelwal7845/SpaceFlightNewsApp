import 'dart:convert';

ArticleModel articleModelFromJson(String str) => ArticleModel.fromJson(json.decode(str));
String articleModelToJson(ArticleModel data) => json.encode(data.toJson());
class ArticleModel {
  ArticleModel({
    this.id,
    this.title,
    this.url,
    this.imageUrl,
    this.newsSite,
    this.summary,
    this.publishedAt,
    this.updatedAt,
    this.featured,});

  ArticleModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    newsSite = json['newsSite'];
    summary = json['summary'];
    publishedAt = json['publishedAt'];
    updatedAt = json['updatedAt'];
    featured = json['featured'];
  }
  int? id;
  String? title;
  String? url;
  String? imageUrl;
  String? newsSite;
  String? summary;
  String? publishedAt;
  String? updatedAt;
  bool? featured;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['url'] = url;
    map['imageUrl'] = imageUrl;
    map['newsSite'] = newsSite;
    map['summary'] = summary;
    map['publishedAt'] = publishedAt;
    map['updatedAt'] = updatedAt;
    map['featured'] = featured;
    return map;
  }

}