import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: drawyereg(),));

}
class drawyereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text('drawer'),),
      drawer:
      Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName:Text("abhay"),
                  accountEmail: Text("abhaycheruvadi@gmail.com",),
                    currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLKZvGYtu9oSEcwEMrgwa2LSXPyOzAlGKzQw&usqp=CAU"),
                    ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2j_KPX_DHqoRdK4RKcSOzJhPaltA8hQ8PIQ&usqp=CAU",),fit: BoxFit.fill)),
                otherAccountsPictures: [
                  CircleAvatar(backgroundImage:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpWIPgxE778zkTTaitPRQ_D91ZVwe1GlMU9g&usqp=CAU"),),
                  CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuER1Jo29UZqb0yrWYm1Hm_obotbEi4LdafQ&usqp=CAU"),)
                ],

                  ),
              ListTile(
                trailing: Icon(Icons.icecream),
                title: Text("home"),
                leading: Icon(Icons.icecream),

              ),
              ListTile(
                trailing: Icon(Icons.icecream),
                title: Text("ADULT"),
                leading: Icon(Icons.safety_check),

              ),
              ListTile(
                trailing: Icon(Icons.home),
                title: Text("service"),
                leading: Icon(Icons.safety_check),

              ),
              ListTile(
                trailing: Icon(Icons.home),
                title: Text("help"),
                leading: Icon(Icons.safety_check),

              ),
              ListTile(
                trailing: Icon(Icons.home),
                title: Text("service"),
                leading: Icon(Icons.safety_check),

              )


            ],
          ),

        ),
      ),
    );
  }

}