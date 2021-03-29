import 'package:flutter/material.dart';
import 'package:gofood/detailfood.dart';

class Foodscreen extends StatelessWidget {
  var titleList = [
    "MCdonals",
  ];
  var imgList = [
    "assets/menu.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Food',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GoFood'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.search),
                title: new Text('Search'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: new Icon(Icons.book_outlined),
                title: new Text('History'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: new Icon(Icons.backpack),
                title: new Text('Pickup'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: new Icon(Icons.thumb_up_alt_sharp),
                title: new Text('Liked'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.black)
          ],
        ),
        backgroundColor: Colors.amberAccent,
        body: ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Detailfood()));
                },
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(imgList[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              titleList[index],
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
