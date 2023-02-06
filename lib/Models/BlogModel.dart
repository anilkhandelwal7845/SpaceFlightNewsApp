import 'dart:convert';

BlogModel blogModelFromJson(String str) => BlogModel.fromJson(json.decode(str));
String blogModelToJson(BlogModel data) => json.encode(data.toJson());
class BlogModel {
  BlogModel({
    this.id,
    this.title,
    this.url,
    this.imageUrl,
    this.newsSite,
    this.summary,
    this.publishedAt,
    this.updatedAt,});

  BlogModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    newsSite = json['newsSite'];
    summary = json['summary'];
    publishedAt = json['publishedAt'];
    updatedAt = json['updatedAt'];
  }
  int? id;
  String? title;
  String? url;
  String? imageUrl;
  String? newsSite;
  String? summary;
  String? publishedAt;
  String? updatedAt;

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
    return map;
  }

}