import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/ruangs.dart';
import '../models/ruang.dart';
import '../widgets/ruang_item.dart';
import '../screens/semua_ruangan_screen.dart';

class BerandaScreen extends StatelessWidget {
  final List<Ruang> ruangs = Ruangs().getRuangsAll;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              child: Container(
                color: Colors.black45,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(
              'Hi Guest',
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: Text('Mau cari ruangan pilihanmu'),
          ),
          Spacer(),
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
                  onPressed: () {
                    Navigator.of(context).pushNamed( SemuaRuanganScreen.routeName);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ruang Pilihan',
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Cari lebih',
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 350,
              child: ListView.builder(
                itemBuilder: (_, index) => ChangeNotifierProvider.value(value: ruangs[index], child: RuangItem(),),
                itemCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
