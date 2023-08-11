import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: movieApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class movieApp extends StatelessWidget {
  List image = [
    "assets/images/avater.jpg",
    "assets/images/interstalar.jfif",
    "assets/images/ready or not.jpg",
    "assets/images/titanic.jpg",
    "assets/images/tenet.jpg"
  ];
  List img = [
    "assets/images/docter strange.jpeg",
    "assets/images/Black widow.jpg",
    "assets/images/iron man.jpg",
    "assets/images/Hulk.jpg",
    "assets/images/THOR.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.indigo,
        title: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search by title,general,actor",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            // height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Recent searches',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Marvel',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'captain america',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Captain Marvel',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Thor',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Text(
                "Popular",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: image.map((Movie) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(Movie), fit: BoxFit.cover)),
                );
              }).toList()),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: Text(
                "Recommentation for you",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: img.map((Movie) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 160,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(Movie), fit: BoxFit.cover)),
                );
              }).toList()),
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
