import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/stackeg.dart';

void main(){
  runApp(MaterialApp(home: stackeg(),));

}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(color: Colors.cyan,
          padding: EdgeInsets.all(12),
          child: Text("hii"),),

          Expanded(child: Container(
            child: Text("halo"),
            color: Colors.green,

          ),
          ),
          Container(
            child: Text("chd"),
            color: Colors.yellow,
          )
        ],
      ),
    );
  }

}