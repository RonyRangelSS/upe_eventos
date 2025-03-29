import 'package:flutter/material.dart';
import 'package:upe_eventos/models/event.dart';

class EventItem extends StatelessWidget {
  final Event event;

  const EventItem({super.key, required this.event});


  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 146,
            width: 120,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset("assets/images/${event.imgName}", fit: BoxFit.cover),
          ),
          Text(event.title),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow,),
              Text(event.rate.toString()),
            ],
          ),
        ],
      ),
    );
  }
}