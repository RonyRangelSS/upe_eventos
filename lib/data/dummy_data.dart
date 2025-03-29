import 'package:upe_eventos/models/category.dart';
import 'package:upe_eventos/models/event.dart';
import 'package:flutter/material.dart';
import 'package:upe_eventos/models/news.dart';

final categoryList = [
  Category(color: Colors.yellow, title: "Festas", icon: Icon(Icons.celebration, color: Colors.white),),
  Category(color: Colors.blue, title: "Reuniões", icon: Icon(Icons.people, color: Colors.white),),
  Category(color: Colors.red, title: "Acadêmico", icon: Icon(Icons.edit_document, color: Colors.white),),
  Category(color: Colors.lightBlue, title: "Jogos", icon: Icon(Icons.gamepad, color: Colors.white,),),
];

final eventList = [
  Event(imgName: "calourada.png", title: "Calourada", rate: 3.4),
  Event(imgName: "hackathon.png", title: "Hackathon", rate: 4.0),
  Event(imgName: "adauto.png", title: "Debate", rate: 3.8),

];

final newsList = [
  News(imgName: "news1.png", label: "Laboratório novo"),
  News(imgName: "news2.png", label: "Ar condicionado"),
  News(imgName: "news3.png", label: "Reforma"),
];