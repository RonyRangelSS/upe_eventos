import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:upe_eventos/models/news.dart';

class NewsItem extends StatelessWidget {
  final News news;

  const NewsItem({required this.news, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.all(6),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage("assets/images/${news.imgName}"),
            fit: BoxFit.cover,
            width: 125,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 32,
              decoration: BoxDecoration(color: Colors.black54),
              child: Text(
                news.label,
                style: TextStyle(color: Colors.white, fontSize: 16, ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
