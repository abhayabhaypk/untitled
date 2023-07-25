import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CategoriesPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class CategoriesPage extends StatelessWidget {
  var cardTitles = [
    'Polititcs',
    'Sports',
    'Science',
    'Technology',
    'Travel',
    'Entertainment',
  ];
  var cardColors = [
    Colors.orange[300],
    Colors.blue[300],
    Colors.pink[300],
    Colors.pinkAccent,
    Colors.indigo[300],
    Colors.blue[600],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('hi all'),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0, // shadow of the appbar
        // leading: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Categories',
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
        // actions: [],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.black,
            margin: EdgeInsets.all(10.0),
            color: cardColors[index],
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      // boxShadow: [
                      //   BoxShadow(color: Colors.black, blurRadius: 1)
                      // ],
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/newsHour/squidGame.jpg'),fit: BoxFit.cover
                      ),
                    ),
                    // child: Image(
                    //   image: AssetImage(
                    //       'assets/images/newsHour/squidGame.jpg'),
                    // ),
                  ),
                ),
                Positioned(
                    bottom: 15,
                    left: 15,
                    child: Text(
                      cardTitles[index],
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
              ],
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }
}