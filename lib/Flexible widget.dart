import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Scaffold(
  appBar: AppBar(
    title: Text('Geeksforgeek'),
    backgroundColor: Colors.greenAccent[400],
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: (){},
      tooltip: 'menu',
    )
  ),
    body: Center(
      child: Container(
        child: Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ),));
}