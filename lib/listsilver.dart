import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/listcustm.dart';

void main(){
  runApp(MaterialApp(home: List_with_custom(),));

}
class List_with_custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        Card(
          child: ListTile(
            leading: Icon(CupertinoIcons.increase_indent),
            title: Text("any"),
            trailing: Icon(CupertinoIcons.game_controller),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(CupertinoIcons.increase_indent),
            title: Text("sinu"),
            trailing: Icon(CupertinoIcons.game_controller),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(CupertinoIcons.increase_indent),
            title: Text("sonu"),
            trailing: Icon(CupertinoIcons.game_controller),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(CupertinoIcons.increase_indent),
            title: Text("manu"),
            trailing: Icon(CupertinoIcons.game_controller),
          ),
        )
      ])),
    );
  }

}