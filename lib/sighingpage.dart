import 'package:flutter/material.dart';


class sighingpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("sighin"),),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 50,right: 50),
            child: Text("sighin",
              style: TextStyle(color: Colors.red,fontSize: 70),),
          ),),
          Padding(padding: const EdgeInsets.only(top: 30,left: 60,right: 70),
          child:TextFormField(
            decoration: InputDecoration(
              prefix: Icon(Icons.person),
              labelText: "email",
              hintText: "email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(150),)),
            textInputAction: TextInputAction.next,

          ),
          ),


        ],
      ),
    );
  }

}