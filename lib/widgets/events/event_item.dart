import 'package:flutter/material.dart';
import 'package:upe_eventos/models/event.dart';

class EventItem extends StatelessWidget {
  final Event event;

  const EventItem({super.key, required this.event});


  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Container(
          height: 146,
          width: 120,
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(event.imgName),
        ),
        Text(event.title),
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow,),
            Text(event.rate.toString()),
          ],
        ),
      ],
    );
  }
}