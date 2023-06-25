class NewsModel {
  final String title;
  final String time;
  final int views;
  final String image;
  final String describe;
  final bool isNew;
  NewsModel({
    required this.title,
    required this.time,
    required this.views,
    required this.image,
    required this.describe,
    required this.isNew,
  });
}
