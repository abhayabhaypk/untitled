import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(){
  runApp(MaterialApp(home: staggedgrid(),));

}
class staggedgrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(crossAxisCount: 4,
      mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      staggeredTiles: [
        StaggeredTile.count(2, 2),
        StaggeredTile.count(1,1),
        StaggeredTile.count(1,2),
        StaggeredTile.count(2,2),
        StaggeredTile.count(3,2),
        StaggeredTile.count(2,3),
        StaggeredTile.count(2,3),
        StaggeredTile.count(1,2),
        ],
        children: [
          custemchild(icondate:Icons.account_box_outlined,bgcolor:Colors.black54),
          custemchild(icondate:Icons.hd,bgcolor:Colors.green),
          custemchild(icondate:Icons.javascript,bgcolor:Colors.blueAccent),
          custemchild(icondate:Icons.yard,bgcolor:Colors.orangeAccent),
          custemchild(icondate:Icons.arrow_back_rounded,bgcolor:Colors.redAccent),
          custemchild(icondate:Icons.king_bed,bgcolor:Colors.yellowAccent),
          custemchild(icondate:Icons.apple,bgcolor:Colors.blueGrey),
          custemchild(icondate:Icons.apple,bgcolor:Colors.red ),


        ],),
    );
  }

}
class custemchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData? icondate;
  custemchild({this.icondate,this.bgcolor});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(icondate),
    );
  }

}