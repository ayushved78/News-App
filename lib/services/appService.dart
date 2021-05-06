import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/article.dart';

class ApiService {
  final endPointUrl =
      "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey={INSERT YOUR KEY HERE: looks like:-5541adc5ffc24a36ba20bce3d67894112}";

  Future<List<Article>> getArticle() async {
    http.Response res = await http.get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get it");
    }
  }
}
