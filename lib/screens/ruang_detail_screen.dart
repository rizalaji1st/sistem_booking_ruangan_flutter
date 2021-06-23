import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/ruang.dart';
import '../providers/ruangs.dart';

class RuangDetailScreen extends StatelessWidget {
  static const routeName = '/ruang-detail-screen';
  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    if (route == null) return SizedBox.shrink();
    final ruangId = route.settings.arguments as String;
    final Ruang ruang = Provider.of<Ruangs>(
      context,
      listen: false,
    ).findById(ruangId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ruang ${ruang.nama}'),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: ClipRRect(
              child: Image.network(
                ruang.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              child: Stack(
                children: [
                  Card(
                    elevation: 4,
                    child: Container(
                      width: MediaQuery.of(context).size.width * .80,
                      height: MediaQuery.of(context).size.height * .60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ListTile(
                            title: Text(
                              ruang.nama,
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            subtitle:
                                Text('Kapasitas ${ruang.kapasitas} orang'),
                          ),
                          Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Fasilitas',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 16),
                                ),
                              ),
                              Container(
                                height: 150,
                                width: double.infinity,
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (_2, int index) => Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(25)
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width *0.15,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Icon(ruang.fasilitas[index]['icon'] as IconData, color: Colors.blue,),
                                                  Text(ruang.fasilitas[index]['nama'] as String, style: TextStyle(color: Colors.blue),),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                    separatorBuilder: (_, int index) =>
                                        VerticalDivider(
                                          color: Colors.white,
                                        ),
                                    itemCount: ruang.fasilitas.length),
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              child: Text(
                                'Pesan Ruangan',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                        ),
                        color: Colors.blue,
                      ),
                      child: Row(
                        children: [
                          Text(
                            ruang.biaya >= 100000
                                ? 'Rp. ${(ruang.biaya / 1000).round()} K '
                                : 'Rp. ${ruang.biaya} ',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
