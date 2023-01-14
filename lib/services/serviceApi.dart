import 'package:http/http.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uas_syifa/model/articlemodel.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = http.Client();
  Future<List<Article>> getArticle() async {
    final queryParameters = {
      'category': 'sports',
      'apiKey': '0ee65742c79f4b879a86c02a3e7a5134'
    };
    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
