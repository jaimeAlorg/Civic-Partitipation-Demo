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
              backgroundColor: Colors.white,
              radius: 20,
            ),
          )
        ],
      ),
      drawer: Drawer(),
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
}
