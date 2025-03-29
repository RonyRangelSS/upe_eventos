import 'package:flutter/material.dart';
import 'package:upe_eventos/widgets/events/event_row.dart';
import 'package:upe_eventos/widgets/categories/category_row.dart';
import 'package:upe_eventos/data/dummy_data.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text('Upeventos'),
              ),
              SearchBar(
                constraints: BoxConstraints(maxHeight: 33, maxWidth: 320),
              ),
            ],
          ),
          toolbarHeight: 147,
          backgroundColor: Color.fromARGB(255, 214, 40, 57),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: CategoryRow(categoryList: categoryList),),
            Text("Explore os eventos da UPE", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Expanded(child: EventRow(eventList: eventList)),
          ],
        ),
      );
  }
}