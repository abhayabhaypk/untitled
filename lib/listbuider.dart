import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listbuilder(),));

}
class listbuilder extends StatelessWidget{
  var data=['abhu','minu','sinu','sonu','sinu'];
  var colorss=[500,400,300,200,100];
  var images=['assets/images/images.png','assets/images/images.png','assets/images/images.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list page"),),
      body: ListView.builder(
        itemCount: images.length,
          itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: Image(image: AssetImage(images[index]),),
              title: Text(data[index]),
                subtitle: Text(data[index]),
              trailing: Icon(Icons.call,color: Colors.cyan,

            ),

            ),
          );
          },
      ),
    );
  }

}