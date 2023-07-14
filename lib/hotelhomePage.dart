import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hhome(),debugShowCheckedModeBanner: false,
  ));
}

class hhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            backgroundColor: Colors.cyan,
            leading: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            actions: <Widget>[IconButton(
              icon: const Icon(Icons.favorite,
              color: Colors.white,),
              onPressed: (){},
            )],
            floating: true,
            flexibleSpace: ListView(
              children: <Widget>[
                const SizedBox(
                  height: 70.0,
                ),
                const Text("type your location",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "mavoor,calicut",
                      border: InputBorder.none,
                      icon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: _buildCategoirs(),
          )
        ],
      ),
    );
  }

  Widget _buildCategoirs() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            width: 15,
          ),
          Category(
            backgroundColor: Colors.blue,
            icon: Icons.hotel,
            title: "Holet",
          ),
          SizedBox(
            width: 15,
          ),
          Category(
            backgroundColor: Colors.pink,
            icon: Icons.restaurant,
            title: "Restaurant",
          ),
    SizedBox(
      width: 15,
    ),
    Category(
    backgroundColor: Colors.orange,
    icon: Icons.local_cafe,
    title: "local_cafe",
    ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? backgroundColor;

  const Category(
      {Key? key,
      required this.icon,
      required this.title,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(5.0))),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(title, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
