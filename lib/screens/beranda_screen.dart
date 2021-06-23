import 'package:flutter/material.dart';
import '../providers/ruangs.dart';
import '../models/ruang.dart';

class BerandaScreen extends StatelessWidget {
  List<Ruang> ruangs = Ruangs().getRuangsAll;

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
                  onPressed: () {},
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
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: 150,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              ruangs[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                topRight: Radius.circular(10),
                              ),
                              color: Colors.blue,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  ruangs[index].biaya >= 100000
                                      ? 'Rp. ${ruangs[index].biaya / 1000} K '
                                      : 'Rp. ${ruangs[index].biaya} ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      '/Jam',
                                      style: TextStyle(
                                          backgroundColor: Colors.white,
                                          color: Colors.blue),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          height: 150.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.grey.withOpacity(0.0),
                                    Colors.black,
                                  ],
                                  stops: [
                                    0.2,
                                    1.0
                                  ])),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${ruangs[index].nama} ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.end,
                                    children: [
                                      Icon(Icons.person, color: Colors.white,),
                                      Text(
                                        '${ruangs[index].kapasitas} orang',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: ruangs.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
