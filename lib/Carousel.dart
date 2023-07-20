import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: carousel(),
    debugShowCheckedModeBanner: false,
  ));
}

class carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 135,
            backgroundColor: Colors.green,
            title: Text(
              "FARMER FRESH ZONE",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            actions: [
              IconButton(
                  icon: const Icon(Icons.location_on_outlined),
                  onPressed: () {}),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Text(
                  "Kochi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
            floating: true,
            flexibleSpace: ListView(
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for vegetable and fruits..",
                      border: InputBorder.none,
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    child: Text("VEGETABLES"),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    child: Text("FRUITS"),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    child: Text("EXOTIC CUTS"),
                  ),
                ],
              ),
            ),
                CarouselSlider(items: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKeRPJ6Cu_cdiLiDb_ffrn6r0oi09bJXoGyA&usqp=CAU"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfO37MK81JIyR1ptwqr_vYO3w4VR-iC2wqQ&usqp=CAU"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRezkhZEGyU-SbkR5X1RGxo8OxQFLfKonocyg&usqp=CAU"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWmUOvofdKUdxOfLjwXsJiJYHt-yU0XFifxQ&usqp=CAU"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT6Y0_o18OI_lQkgg4q64wkf66oe52MnxN0Q&usqp=CAU"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg"),
                      ),
                    ),
                  ),
                ], options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: false,
                ),),
                Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(1),
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icontitle(
                          icone:Icons.alarm,
                          title:'30 min policy',
                        ),
                        Icontitle(
                          icone:Icons.camera_front_outlined,
                          title:'Traceability',
                        ),
                        Icontitle(
                          icone:Icons.home_work,
                          title:'Local sourrounding',
                        ),



                      ],
                    ),
                  ),
                )
          ]))
        ],
      ),

    );
  }
}

class Icontitle extends StatelessWidget{
  final IconData icone;
  final String title;

  const Icontitle({super.key,required this.icone,required this .title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(icone),
          Text(title),
        ],
      ),
    );
  }

}

