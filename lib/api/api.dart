import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://api.spaceflightnewsapi.net/v3";
class API {
  static Future getArticles() {
    var url = baseUrl + "/articles";
    return http.get(Uri.parse(url));
  }

  static Future getBlogs() {
    var url = baseUrl + "/blogs";
    return http.get(Uri.parse(url));
  }

  static Future getReports() {
    var url = baseUrl + "/reports";
    return http.get(Uri.parse(url));
  }
}