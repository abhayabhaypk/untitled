import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CarHomepage(),
  debugShowCheckedModeBanner: false,));

}
class CarHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10,bottom: 30),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 3,color: Colors.orange),
            image: DecorationImage(image: AssetImage("assets/images/4k-superman-minimal-superheroes-darkness.jpg")),
          ),
        ),
      ),
      actions: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 45),
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: 'IDR',
                    style: TextStyle(fontSize: 8),
                  ),
                  TextSpan(
                    text: "17.7jt",
                    style: TextStyle(fontSize: 12)
                  )
                ]
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: IconButton(onPressed: (){},icon: Icon(Icons.add_box_rounded),color: Colors.blue,),
            )
          ],
        )
      ],
    ),
    body: ListView(
      children: [
        Container(
          height: 350,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )
          ),
        )
      ],
    ),
  );
  }

}