import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('widget.title'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {},
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.book),
              title: Text('Book'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.person),
              title: Text('Profil'),
            ),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
    ;
  }
}
