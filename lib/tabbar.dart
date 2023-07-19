import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: tabbar(),
  debugShowCheckedModeBanner: ,));

}
class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 4,
       child: Scaffold(
         appBar: AppBar(
           title: Text("my tab bar"),
           backgroundColor: Colors.green[800],
           actions: [
             Icon(Icons.camera_alt),
             SizedBox(width: 20,),
             Icon(Icons.search),
             PopupMenuButton(itemBuilder: (context){
               return[
                 PopupMenuItem(child: Text("about")),
                 PopupMenuItem(child: Text("settings")),
                 PopupMenuItem(child: Text("logout")),
               ];
             })
           ],
           bottom: TabBar(
             unselectedLabelColor: Colors.yellow,


             tebs
           ),
         ),
       ))
  }

}