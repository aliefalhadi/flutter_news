import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternews4/ui_page/HomePage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int myIndexTab = 0;

  void onTapNav(index){
    setState(() {
      myIndexTab = index;
    });
  }

  final _bottomBarItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("Home")
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.category),
        title: Text("Category")
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text("Profile")
    ),
  ];

  final listPage = [
    HomePage(),
    Text("test page 2"),
    Text("test page 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      drawer: Drawer(),
      endDrawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 24,
              width: 24,
              color:  Colors.red,
              alignment: Alignment.center,
              child: Text("B"),
              margin: EdgeInsets.only(left: 2, right: 2),
            ),
            Container(
              margin: EdgeInsets.only(left: 2, right: 2),
              height: 24,
              width: 24,
              color:  Colors.red,
              alignment: Alignment.center,
              child: Text("B"),
            ),
            Container(
              height: 24,
              margin: EdgeInsets.only(left: 2, right: 2),
              width: 24,
              color:  Colors.red,
              alignment: Alignment.center,
              child: Text("C"),
            ),
            Text("NEWS", style: TextStyle(
                color: Colors.red,
              letterSpacing: 3,
              fontSize: 24
            ),
            )
          ],
        ),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.lens, size: 24,),
//            onPressed: (){},
//          ),
//          IconButton(
//            icon: Icon(Icons.search, size: 24,),
//            onPressed: (){},
//          )
//        ],
      ),

      body: listPage[myIndexTab],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomBarItem,
        currentIndex: myIndexTab,
        showUnselectedLabels: false,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: onTapNav,
      ),
    );
  }
}
