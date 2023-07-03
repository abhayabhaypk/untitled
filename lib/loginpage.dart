import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: loginpage(),));

}
class loginpage extends StatefulWidget{
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final formkey=GlobalKey<FormState>();
  bool showpass=true;
  @override
 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("loginpage"),),
       body: Form(
         key:formkey ,
         child: Column(
           children: [
             Center(child: Padding(
               padding:const EdgeInsets.only(top: 30),
                   child:Text("Logingpage",style: TextStyle(color: Colors.cyan),),

    )),
             Padding (
               padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
               child: TextFormField(
                 decoration: InputDecoration(
                   labelText: "username",
                   hintText: "username",
                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80)))
                 ,textInputAction: TextInputAction.next,
                 validator: (email){
                   if(email==null || email.isEmpty){
                     return'This field is required';
                   }
                 },

                   ),),

             Padding (
               padding: const EdgeInsets.only(top: 30,left: 60,right: 60,bottom: 50),
               child: TextFormField(
                         obscureText:true,
                  obscuringCharacter: '*',
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.password),
                           suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(showpass){
                              showpass=false;
                            }else{
                              showpass=true;
                            }
                          });
                        },icon: Icon(showpass==true? Icons.visibility_off:Icons.visibility),),


                       labelText: "password",
                       hintText: "password",
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(100))
                       ),textInputAction: TextInputAction.done,
                       validator: (password){
                           if(password==null || password.isEmpty){
                             return'This field is required';
                           }
                       },

               ),),
             Padding(
               padding: const EdgeInsets.all(40),
               child: ElevatedButton(onPressed: (){}, child:Text("loging")),
             ),
             TextButton(onPressed: (){}, child: Text("loging"))

           ],

         ),
       ),

    );
  }
}