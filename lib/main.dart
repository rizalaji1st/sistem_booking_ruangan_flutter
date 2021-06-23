import 'package:flutter/material.dart';
import 'package:sistem_booking_ruangan_flutter/screens/tabs_screen.dart';
import 'package:sistem_booking_ruangan_flutter/screens/akun_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabsScreen(),
    );
  }
}
