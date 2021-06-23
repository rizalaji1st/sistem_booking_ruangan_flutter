import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/ruang_item.dart';
import '../providers/ruangs.dart';
import '../models/ruang.dart';

class SemuaRuanganScreen extends StatelessWidget {
  final List<Ruang> ruangs = Ruangs().getRuangsAll;
  static const routeName = '/semua-ruangan-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semua Ruang'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Card(
              child: new ListTile(
                title: new TextField(
                  decoration: new InputDecoration(
                      hintText: 'Search', border: InputBorder.none),
                  onChanged: (tes) {},
                ),
                trailing: new IconButton(
                  icon: new Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * .70,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (_, index) => ChangeNotifierProvider.value(value: ruangs[index], child: RuangItem(),),
                itemCount: ruangs.length,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
