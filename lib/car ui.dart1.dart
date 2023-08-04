import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CarHomepage(),));

}
class  CarHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [
         Column(
           children: [
             SizedBox(
               height: 100,
               child: Card(
                 color: Colors.blue,
                 child: ListTile(
                   leading: Container(
                     child: Text(

                     ),
                   ),
                 ),
               ),
             )
           ],
         )
       ],
     ),
   )
  }

}