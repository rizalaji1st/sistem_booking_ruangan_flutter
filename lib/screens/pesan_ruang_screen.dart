import 'package:flutter/material.dart';
import '../providers/ruangs.dart';
import 'package:provider/provider.dart';
import '../models/ruang.dart';

class PesanRuangScreen extends StatefulWidget {
  

  static const routeName = '/pesan-ruang-screen';

  @override
  _PesanRuangScreenState createState() => _PesanRuangScreenState();
}

class _PesanRuangScreenState extends State<PesanRuangScreen> {
  
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
      appBar: AppBar(title: Text('Pesan ruang ${ruang.nama}')),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * .80,
            child: Column(
              children: [
                Stack(
                  children: [
                    Card(
                      elevation: 4,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .80,
                        height: MediaQuery.of(context).size.height * .20,
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
                            ElevatedButton(
                              onPressed: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 50),
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
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          child: Text(
                            'Pesan Ruangan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
