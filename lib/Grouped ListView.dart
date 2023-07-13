import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: groupedlist(),));

}
class groupedlist extends StatelessWidget{
  var titiles2=['Android','flitter','Ios','java','phython','React'];

  var titiles2 =[
    'Android Tutorial',
    'Flutter Tutorial',
    'Ios Tutorial',
    'java Tutorial',
    'phython Tutorial',
    'React Tutorial'
  ];
  var containerColors=[
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.blue,
    Colors.blueGrey,
    Colors.pink,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("grouped Listview"),),),
          body: ListView.builder(
        children: [
          Card(
        child: ListTile(

    ),
    )
      ],
    ),
        );

  }

}