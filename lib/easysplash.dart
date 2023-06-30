import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

void main(){
runApp(MaterialApp(home: MyApp(),));

}
class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Myappstate();

}
class Myappstate extends State {
  @override
  void initState(){
    Timer(Duration(Seconds:5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));

    })


  }
}