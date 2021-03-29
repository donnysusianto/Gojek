import 'package:flutter/material.dart';

class Detailfood extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Food',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detail Food'),
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
        body: SafeArea(
          child: ListView(children: [
            Container(
              color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              padding: EdgeInsets.all(10),
              child: Row(children: <Widget>[
                Expanded(
                    child: Text(
                  "McDonals",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                )),
                Expanded(
                  child: Image(
                    image: AssetImage('assets/mcd.jpg'),
                  ),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Chesse Burger",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      )),
                      Expanded(
                        child: Text(
                          "Perpaduan roti burger dengan daging sapi gurih, selada segar, keju, saus tomat, acar, potongan bawang dan mustard.",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                      ),
                      Icon(Icons.shopping_cart),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
              color: Colors.red,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Chesse burger deluxe",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                        Expanded(
                          child: Text(
                            "Perpaduan roti burger dengan daging sapi gurih, selada segar, keju, saus tomat, acar, potongan bawang dan mustard.",
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 13.0, color: Colors.white),
                          ),
                        ),
                        Icon(Icons.shopping_cart),
                      ],
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              color: Colors.red,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "BigMac",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        )),
                        Expanded(
                          child: Text(
                            "Perpaduan roti burger dengan dua daging sapi gurih, selada segar, keju, saus special, acar, potongan bawang dan mustard.",
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 13.0, color: Colors.white),
                          ),
                        ),
                        Icon(Icons.shopping_cart),
                      ],
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
              color: Colors.red,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Beef Burger",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                        Expanded(
                          child: Text(
                            "Perpaduan roti burger dengan dua lapis daging sapi gurih, selada segar, keju, saus special khas Mcd, acar, potongan bawang dan mustard",
                            textDirection: TextDirection.ltr,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Icon(Icons.shopping_cart),
                      ],
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
