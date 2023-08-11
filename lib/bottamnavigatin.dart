import 'package:flutter/material.dart';
import 'package:untitled/profileui.dart';

import 'package:untitled/tabbar.dart';

void main(){
 runApp(MaterialApp(home:  bottomnavigationn(),));

}
class bottomnavigationn extends StatefulWidget{
  @override
  State<bottomnavigationn> createState() => _bottomnavigationnState();
}

class _bottomnavigationnState extends State<bottomnavigationn> {
  int selected=0;
  List pages=[
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('home'),
        ),
      ),
    ),
    Center(
       child: Card(
        child: Padding(
           padding: const EdgeInsets.all(8),
          child: Text('Search'),
         ),
       ),
     ),
    profileUI(),
    // Center(
    //   child: Card(
    //     child: Padding(
    //       padding: const EdgeInsets.all(8),
    //       child: Text('Settings'),
    //     ),
    //   ),
    // ),
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('Person'),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("bottam"),),


            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.black,

              items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Person"),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Settings")
            ],
              currentIndex: selected,
              onTap: oncliked,
            ),
        body: pages.elementAt(selected),

        ),
    );
  }
  void oncliked(int index){
    setState(() {
      selected=index;
    });
  }
}