import 'package:flutter/material.dart';
import 'package:upe_eventos/models/news.dart';
import 'package:upe_eventos/widgets/news/news_item.dart';


class NewsRow extends StatelessWidget {
  const NewsRow({super.key, required this.newsList});

  final List<News> newsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(4),
        itemBuilder:
            (ctx, index) => NewsItem(news: newsList[index])
    );
  }
}
