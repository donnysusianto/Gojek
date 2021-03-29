import 'package:flutter/material.dart';

import 'gofoodscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gofood',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.calculate_sharp),
                  text: "Promo",
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Chat",
                )
              ],
            ),
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
                color: Colors.white,
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
                    Text('Order the best')
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
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        primary: Colors.white, // text + icon color
                      ),
                      icon: Icon(Icons.add, size: 32),
                      label: Text('GoPay'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 30),
                      ),
                      child: Text('Pay'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 30),
                      ),
                      child: Text('Top UP'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(20, 30),
                      ),
                      child: Text('Explore'),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                padding: EdgeInsets.all(5),
                height: 250,
                child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      Container(
                        child: Text("Berita 1"),
                        color: Colors.white,
                        alignment: Alignment.center,
                      ),
                      Container(
                        child: Text("Berita 2"),
                        color: Colors.white,
                        alignment: Alignment.center,
                      ),
                    ]),
              ),
              Container(
                color: Colors.white,
                height: 100,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox.fromSize(
                      size: Size(56, 56), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.green, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.motorcycle), // icon
                                Text("GoRide"), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(56, 56), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.green, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.car_repair), // icon
                                Text("GoCar"), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(56, 56), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.red, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Gofoodscreen()));
                            }, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.food_bank), // icon
                                Text("GoFood"), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(56, 56), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.red, // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.medical_services), // icon
                                Text("GoMed"), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
