import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stackeg(),));

}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Container(
           height: 500,
           width: 500,
           color: Colors.green,
         ),
         Positioned(bottom:100,
             right: 100,
         child: Container(
           height: 250,
           width: 250,
           color: Colors.yellow,

         )),
         Positioned(bottom: 150,
         right: 150,
         child: Container(
           height: 150,
           width: 150,
           color: Colors.red,
         )),
    Positioned(bottom: 150,
    right: 150,
    child: Container(
    height: 100,
    width: 100,
    color: Colors.blue,
    ),)
       ],
     ),
   );
  }

}