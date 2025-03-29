import 'package:flutter/material.dart';
import 'package:upe_eventos/models/event.dart';
import 'package:upe_eventos/widgets/events/event_item.dart';

class EventRow extends StatelessWidget {
  const EventRow({super.key, required this.eventList});

  final List<Event> eventList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: eventList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(4),
        itemBuilder:
            (ctx, index) => EventItem(event: eventList[index])
    );
  }
}
