import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/giridview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview(),
  ));
}

class gridview extends StatelessWidget {
  var data=[
    'home',
    'email',
    'alaram',
    'wallet',
    'backup',
    'book',
    'camera',
    'person',
    'print',
    'phone',
    'notes',
    'music',
  ];
  var colors = [
    Colors.deepOrange,
    Colors.blue,
    Colors.pink,
    Colors.orangeAccent,
    Colors.blueGrey,
    Colors.blueAccent,
    Colors.black26,
    Colors.deepOrange,
    Colors.deepOrange,
    Colors.deepOrange,
    Colors.deepOrange,
    Colors.deepOrange,
    Colors.deepOrange,
  ];

  var iconss = [Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,Icons.print,Icons.phone,Icons.note,Icons.music_note];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list page"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 12),
          itemBuilder: (context, index) {
            return Card(
              color: colors[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data[index]),
                  Icon(iconss[index]),
                ],
              ),
            );
          },itemCount: iconss.length,),
    );
  }
}
