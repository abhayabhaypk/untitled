import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/dummyData.dart';

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    final productid =ModalRoute.of(context)?.settings.arguments;
    final product=dummyproducts.firstWhere((data) =>data["id"]==productid);
    return Scaffold(
      appBar: AppBar(
        title: Text('product Details'),
      ),
      body: Padding(padding: EdgeInsets.all(29),
      child: Column(
        children: [
          Image.asset(product["image"]),
          Text("${product["id"].toString()}"),
          Text("${product["name"]}"),
          Text("${product["Description"]}")
        ],
      ),),
    );
  }

}