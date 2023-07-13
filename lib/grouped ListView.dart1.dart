import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListviewAssignment(),
  ));
}

class ListviewAssignment extends StatelessWidget {
  var titiles = ['Android', 'flitter', 'Ios', 'java', 'phython', 'React'];

  var titles2 = [
    'Android Tutorial',
    'Flutter Tutorial',
    'Ios Tutorial',
    'java Tutorial',
    'phython Tutorial',
    'React Tutorial'
  ];
  var containerColors = [
    Colors.deepPurple,
    Colors.lightGreen,
    Colors.blue,
    Colors.blueGrey,
    Colors.pink,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Align(alignment: Alignment.center, child: Text('Grouped listview')),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          color: Colors.blueGrey[50],
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    titiles[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  shadowColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Container(
                          height: 50, width: 50, color: containerColors[index]),
                      title: Text(titles2[index]),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_circle),
                              Text('hdjh'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('3/4/1999'),
                            ],
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
