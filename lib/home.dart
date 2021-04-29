import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  //Creates state, it contains fields that affect how it looks
  State<StatefulWidget> createState() {
    //_ = Private class
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Implements appBar and bottonNavigationBar methods
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(
                  'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
              radius: 20,
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(children: [
                myTags(),
                SizedBox(height: 10),
                myCard(),
                SizedBox(height: 30),
                myCard(),
                SizedBox(height: 40),
              ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }

  Container myTags() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Chip(
            label: Text('All', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.lightBlue,
            elevation: 5,
            visualDensity: VisualDensity(horizontal: -2, vertical: -2),
          ),
          Chip(
            label: Text('Petition', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.purple,
            elevation: 5,
            visualDensity: VisualDensity(horizontal: -2, vertical: -2),
          ),
          Chip(
            label: Text('Survey', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.lightBlue,
            elevation: 5,
            visualDensity: VisualDensity(horizontal: -2, vertical: -2),
          ),
          Chip(
            label: Text('Volunteering', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.lightBlue,
            elevation: 5,
            visualDensity: VisualDensity(horizontal: -2, vertical: -2),
          ),
        ],
      ),
    );
  }

  Card myCard() {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              constraints: BoxConstraints.expand(
                height: 200.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  new Positioned(
                      right: 5,
                      top: 2,
                      child: new Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.red,
                        size: 40,
                      )),
                ],
              )),
          Container(
              margin: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Test",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Signed: 930",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 14),
                  Container(
                      child: Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.lightBlue,
                        size: 23,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "25",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )),
                  SizedBox(height: 20),
                  Container(
                      child: Row(
                    children: [
                      Text("Lappeenranta",
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 14)),
                      Spacer(),
                      Chip(
                        label: Text('Petition',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        backgroundColor: Colors.purple,
                        visualDensity:
                            VisualDensity(horizontal: -4, vertical: -4),
                      ),
                    ],
                  ))
                ],
              )),
        ],
      ),
    );
  }
}
