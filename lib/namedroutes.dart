import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Routepage(),
  routes: {
    'first':(context)=>FirstPage(),
   'second':(context)=>SecondPage(),
  },
  ));

}
class Routepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Named Routes"),
      ),
      body: ListView(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'first');
          }, child: const Text('FirstPage')),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'Second');
            }, child: const Text('SecondPage')),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

}
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MyFirstScreen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }

}
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
            'MYSecondScreen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

}