import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/loginpage.dart';

void main(){
  runApp(MaterialApp(home: signup(),
  ));

}
class signup extends StatelessWidget{
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Form(key: formkey,

       child: Column(
         children: [
           Center(child: Padding(
             padding: const EdgeInsets.all(60.0),
             child: Text("signup",style: TextStyle(fontSize: 30),),
           )),
           Padding(
             padding: const EdgeInsets.only(top: 30,left: 50,right: 60,bottom: 30),

             child: TextFormField(
               validator: (emailid){
                 if(emailid!.isEmpty){
                   return 'emty';
                 }else{
                   return null;
                 }
               },


               decoration: InputDecoration(
                 labelText: "EMail",
                 prefixIcon: Icon(Icons.email),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                 )
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 30,left: 50,right: 60,bottom: 30),

             child: TextFormField(
               validator: (emailid){
                 if(emailid!.isEmpty){
                   return 'emty';
                 }else{
                   return null;
                 }
               },


               decoration: InputDecoration(
                   labelText: "EMail",
                   prefixIcon: Icon(Icons.email),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 30,left: 50,right: 60,bottom: 30),

             child: TextFormField(
               validator: (emailid){
                 if(emailid!.isEmpty){
                   return 'emty';
                 }else{
                   return null;
                 }
               },


               decoration: InputDecoration(
                   labelText: "EMail",
                   prefixIcon: Icon(Icons.email),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   )
               ),
             ),
           ),

           ElevatedButton(onPressed: (){
             final check= formkey.currentState!.validate();
             if(check){
               Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
             }else{
               return null;

             }
           }, child: Text("signup")),
         ],
       ),
     ),
   );
  }

}





