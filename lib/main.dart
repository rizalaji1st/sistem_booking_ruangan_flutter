import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/ruangs.dart';
import './screens/semua_ruangan_screen.dart';
import './screens/tabs_screen.dart';
import './screens/ruang_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Ruangs(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TabsScreen(),
        routes: {
          SemuaRuanganScreen.routeName: (ctx) => SemuaRuanganScreen(),
          RuangDetailScreen.routeName: (ctx) =>RuangDetailScreen(),
        },
      ),
    );
  }
}
