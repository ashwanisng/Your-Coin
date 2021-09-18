class ArticelModel {
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? content;
  DateTime? publishedAt;

  ArticelModel({
    this.title,
    this.urlToImage,
    this.url,
    this.content,
    this.description,
    this.publishedAt,
  });
}
