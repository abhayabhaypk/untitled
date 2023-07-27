import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: NewshoursHome(),
  debugShowCheckedModeBanner: false,
  ));
  
}
class NewshoursHome extends StatelessWidget{
  @override
 State<_NewshoursHome> creatState() => _NewshoursHomeState();
}
class NewshoursHome extends StatefulWidget{
  bool? notifyCheck = false;
  
  String? selectedValue;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
             
             title:RichText(
               text: TextSpan(
                 text: 'News',
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                   color: Colors.black),
                 children: const <TextSpan>[
                   TextSpan(
                     text: 'Hour',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.deepOrange)),
                 TextSpan(
                   text: ' _Admin',
                   style: TextStyle(fontWeight: FontWeight.normal)),
                 ],
               ),
               ),
               actions: [
                 IconButton(onPressed: (){},
                     icon: icon(Icons.settings_outlined),
                 color: Colors.black,
                 )
               ],
                   bottom: TabBar(
                   unselectedLabelColor: Colors.grey,
                   labelColor: Colors.black,
                   tabs: [
                     Tab(
                       text: 'Categoires'
                     ),
                     Tab(
                       text: 'Upload Item',
                     ),
                     Tab(
                       text: 'Popular News',
                     ),
                   ],
                     onTap: (index){
                     switch(index){
                       case 0:
                         Navigator.of(context).push(MaterialPageRoute(builder: builder))
                     }
                     },
                   )
                   )
                 ]
                 )
               ),
             ) , 
            )
          ],
        ),
      ),
    )
  }
  
}