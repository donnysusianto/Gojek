import 'package:flutter/material.dart';

import 'package:gofood/foodscreen.dart';

class Gofoodscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Food',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order Food'),
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
        body: SafeArea(
          child: ListView(children: [
            Container(
              color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('what would you like to eat?')
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              padding: EdgeInsets.all(5),
              height: 300,
              child: Image(
                image: NetworkImage(
                    'https://miro.medium.com/max/600/1*ajfDelQ5-QNfjZMBCc1B0Q.jpeg'),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: Text('New this Week'),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Foodscreen()));
                                  },
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: Text('Near Me'),
                                  onPressed: () {},
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: Text('Pickup'),
                                  onPressed: () {},
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: Text('Pasti ada Promo'),
                                  onPressed: () {},
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: Text('Best Seller'),
                                  onPressed: () {},
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  child: Text('Ready To Cook'),
                                  onPressed: () {},
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
