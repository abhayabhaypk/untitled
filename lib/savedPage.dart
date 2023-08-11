import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: savedpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class savedpage extends StatelessWidget {
  List titleText = ["The Tittile Marmaid ",
    " Brahmastra",
    "BumbleBee ",
    "Bean",
    "Mission Impossile"

  ];
  List subtitleText = ["Fantasy/Musical ‧ 2h 15m",
    "Action/Fantasy ‧ 2h 47m",
    "Action/Fantasy ‧ 2h 47m",
    "Commedy.2h 30m",
    "Action/Adventure ‧ 2h 3m"

  ];

  List image = [
    "assets/images/The littile Marmaid.jpg",
    "assets/images/Brahmastra.webp",
    "assets/images/BumbleBee.jpg",
    "assets/images/bean.jpg",
    "assets/images/mission impossible.jfif"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        title: Center(
          child: Text(
            'saved',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 5),
            child: Text('delete'),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return Container(
            height: 150,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[700],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(image: AssetImage(image[index]))),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleText[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      subtitleText[index],
                      style: TextStyle(color: Colors.grey),
                    ),
                    ElevatedButton(style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.red
                    ),onPressed: () {},
                        child:Padding(
                          padding: const EdgeInsets.all(10),
                        child: Text(
                            "Watch now",
                        style: TextStyle(color: Colors.white),
                        ),
          )),
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          );
        },
        itemCount: titleText.length,
      ),
    );
  }
}
