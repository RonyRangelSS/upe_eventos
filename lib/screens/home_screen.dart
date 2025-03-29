import 'package:flutter/material.dart';
import 'package:upe_eventos/widgets/events/event_row.dart';
import 'package:upe_eventos/widgets/categories/category_row.dart';
import 'package:upe_eventos/data/dummy_data.dart';
import 'package:upe_eventos/widgets/news/news_row.dart';

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
        toolbarHeight: 120,
        backgroundColor: Color.fromARGB(255, 214, 40, 57),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 246, 241, 238),
      body: Column(
        children: [
          SizedBox(height: 140, child: CategoryRow(categoryList: categoryList,)),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Explore os eventos da UPE",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 200 ,child: EventRow(eventList: eventList)),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Novidades",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 180, child: NewsRow(newsList: newsList),)
          
        ],
      ),
    );
  }
}
