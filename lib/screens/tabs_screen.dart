import 'package:flutter/material.dart';
import './akun_screen.dart';
import './beranda_screen.dart';
import './terpesan_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 1;

  @override
  void initState() {
    _pages = [
      {
        'title': 'Terpesan',
        'page': TerpesanScreen(),
      },
      {
        'title': 'Beranda',
        'page': BerandaScreen(),
      },
      {
        'title': 'Manajemen Akun',
        'page': AkunScreen(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title'] as String),
        ),
        body: _pages[_selectedPageIndex]['page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.book),
              // ignore: deprecated_member_use
              title: Text('Book'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text('Profil'),
            ),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
