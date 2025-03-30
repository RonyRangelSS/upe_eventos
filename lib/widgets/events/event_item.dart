import 'package:flutter/material.dart';
import 'package:upe_eventos/models/event.dart';

class EventItem extends StatelessWidget {
  final Event event;

  const EventItem({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8),
      
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Image.asset(
            "assets/images/${event.imgName}",
            height: 140,
            width: 120,
            fit: BoxFit.cover,

          ),
          Text(event.title),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Text(event.rate.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
