import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/savedPage.dart';

import 'ME profile.dart';
import 'movie App .dart';

void main() {
  runApp(MaterialApp(
    home: moviebottomnavigation(),
    debugShowCheckedModeBanner: false,
  ));
}

class moviebottomnavigation extends StatefulWidget {
  const moviebottomnavigation({Key? key}) : super(key: key);

  @override
  State<moviebottomnavigation> createState() => _moviebottomnavigationState();
}

class _moviebottomnavigationState extends State<moviebottomnavigation> {
  int selected = 0;
  List pages = [
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('home'),
        ),
      ),
    ),
    movieApp(),
    savedpage(),

    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('Downloads'),
        ),
      ),
    ),
    profileUI(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: "Save"),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me")
        ],
        currentIndex: selected,
        onTap: oncliked,
      ),
      body: pages.elementAt(selected),
    );
  }
  void oncliked(int index){
    setState(() {
      selected=index;
    });
  }
}
