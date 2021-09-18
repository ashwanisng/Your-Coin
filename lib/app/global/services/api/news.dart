import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:your_coin/app/data/models/articel_model.dart';

class NewsService {
  List<ArticelModel> news = [];

  String url =
      'https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=b9e7b0d3647148fa90b4e0beff0990bf';

  Future<List<ArticelModel>> getNews() async {
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticelModel articelModel = ArticelModel(
            content: element['content'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            title: element['title'],
            url: element['url'],
            publishedAt: DateTime.parse(element['publishedAt']),
          );

          news.add(articelModel);
        }
      });
    }
    return news;
  }
}
