import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listseperste(),));

}
class listseperste extends StatelessWidget{
  var data=['abhu','minu','sinu','sonu','sinu'];
  var colorss=[500,400,300,200,500];
  var phoneumber=["91886757",'6465456375','7575765765765','8678587598','7678686'];
  var images=['assets/images/images.png','assets/images/images.png','assets/images/images.png','assets/images/images.png','assets/images/images.png',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card( color: Colors.yellow[colorss[index]],
          child: ListTile(
            leading: Image(image: AssetImage(images[index]),),
            title: Text(data[index]),
            subtitle: Text(phoneumber[index]),
            trailing: Icon(Icons.call),
          ),
        );
      }, separatorBuilder: (context,index){
        return Divider(
          thickness: 6,
          color: Colors.yellow[colorss[index]],
        );

      }, itemCount: data.length),
    );

  }

}
