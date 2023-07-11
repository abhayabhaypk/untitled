import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridwithcustom(),));

}
class gridwithcustom extends StatelessWidget{
  var image=['https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928_1280.jpg',
  'https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg',
    'https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg?cs=srgb&dl=pexels-roberto-nickson-2486168.jpg&fm=jpg',
    'https://media.istockphoto.com/id/912432850/photo/young-man-with-view-over-the-clouds.jpg?s=2048x2048&w=is&k=20&c=gS93wW9s3rjU9t4dLyMo_vMxZJcu4xt142UUkCUu14g='

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
       mainAxisSpacing: 20,
       crossAxisSpacing: 20,

     ), childrenDelegate: SliverChildBuilderDelegate(
         (context,index) {
           return Card(
             child: Image(
               image: NetworkImage(image[index]),

             ),
           );
         },childCount: image.length
     )),
    );
  }

}