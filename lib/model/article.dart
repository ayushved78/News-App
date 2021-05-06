import 'package:news/model/model.dart';

class Article {
  Source source;
  String author;
  String title;
  String desc;
  String url;
  String urltoimg;
  String publishedat;
  String content;

  Article(
      {this.source,
      this.author,
      this.title,
      this.desc,
      this.url,
      this.urltoimg,
      this.publishedat,
      this.content});
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        source: Source.fromJson(json['source']),
        author: json['author'] as String,
        title: json['title'] as String,
        desc: json['description'] as String,
        url: json['url'] as String,
        urltoimg: json['urltoimage'] as String,
        publishedat: json['publishedAt'] as String,
        content: json['content'] as String);
  }
}
