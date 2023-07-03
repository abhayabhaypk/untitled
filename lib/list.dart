import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listpage(),));

}
class listpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Text("list page"),),
   body: ListView(
     children: [
       Card(color: Colors.red,
       child: ListTile(
         leading: Icon(Icons.person),
         title: Text("abhay"),
         subtitle: Text("9188377942"),
         trailing: Icon(Icons.call),

       ),),
       Card(color: Colors.yellow,
         child: ListTile(
           leading: Icon(Icons.person),
           title: Text("sinu"),
           subtitle: Text("9188377942"),
           trailing: Icon(Icons.call),

         ),),
       Card(color: Colors.white,
         child: ListTile(
           leading: Icon(Icons.person),
           title: Text("dii"),
           subtitle: Text("9188377942"),
           trailing: Icon(Icons.call),

         ),),
       Card(color: Colors.blue,
         child: ListTile(
           leading: Icon(Icons.person),
           title: Text("arun"),
           subtitle: Text("9188377942"),
           trailing: Icon(Icons.call),

         ),),
     ],
   ),
 );
  }

}