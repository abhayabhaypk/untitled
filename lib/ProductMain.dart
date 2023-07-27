import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Product2.dart';
import 'package:untitled/dummyData.dart';

void main(){
  runApp(MaterialApp(home: ProductMain(),
    routes: {"Secondone": (context) => ProductList(),
    },
  ));

}
class ProductMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyproducts.map((product){
          return TextButton(onPressed: () => gotonext(context,product["id"]),
    child: Text("${product["name"]}"));}).toList(),
      ),
    );
  }
  void gotonext(BuildContext context, product){
    Navigator.of(context).pushNamed("Secondone",arguments: product);
  }
}