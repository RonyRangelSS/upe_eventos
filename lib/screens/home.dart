import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset(
                "assets/images/logo.png",
                height: 40,
                width: 140,
              ),
            ),
            SizedBox(height: 25),
            Row(
              spacing: 4,
              children: [
                SearchBar(
                  hintText: "Pesquisar por eventos, reuniões...",
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 6, vertical: 4),),
                  hintStyle: WidgetStatePropertyAll<TextStyle>(
                    TextStyle(
                      
                      color: Color.fromARGB(255, 112, 112, 112),

                    ),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: 50,
                    maxWidth: 320,
                    minHeight: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_alt, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: 156,
        backgroundColor: Color.fromARGB(255, 214, 40, 57),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 246, 241, 238),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: CategoryRow(categoryList: categoryList),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Explore os eventos da UPE",
                style: GoogleFonts.nunito(fontSize: 28, fontWeight: FontWeight.w500,),
              ),
            ),
            SizedBox(height: 220, child: EventRow(eventList: eventList)),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Novidades",
                style: GoogleFonts.nunito(fontSize: 28, fontWeight: FontWeight.w500,),
              ),
            ),
            SizedBox(height: 180, child: NewsRow(newsList: newsList)),
          ],
        ),
      ),
    );
  }
}
