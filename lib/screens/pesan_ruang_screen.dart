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
  DateTime tanggalPesan = DateTime.now();
  late TimeOfDay jamAwal;
  late TimeOfDay jamAkhir;

  @override
  void initState() {
    jamAwal = TimeOfDay.now();
    jamAkhir = TimeOfDay.now();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
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
            child: SingleChildScrollView(
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
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                                subtitle:
                                    Text('Kapasitas ${ruang.kapasitas} orang'),
                              ),
                              // ElevatedButton(
                              //   onPressed: () {},
                              //   child: Container(
                              //     decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(20),
                              //         color: Colors.blue),
                              //     padding: EdgeInsets.symmetric(
                              //         vertical: 10, horizontal: 50),
                              //     child: Text(
                              //       'Pesan Ruangan',
                              //       style: TextStyle(color: Colors.white),
                              //     ),
                              //   ),
                              // ),
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
                  Card(
                    elevation: 4,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ListTile(
                            title: Text(
                              'Pilih Tanggal',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                          ),
                          DatePickerDialog(
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2025),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ListTile(
                            title: Text(
                              'Pilih Jam Awal',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            subtitle: Text(
                                'Piihan sekarang jam: ${localizations.formatTimeOfDay(jamAwal)}'),
                            trailing: Icon(Icons.timer),
                            onTap: _pickJamAwal,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ListTile(
                            title: Text(
                              'Pilih Jam Akhir',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            subtitle: Text(
                                'Piihan sekarang jam: ${localizations.formatTimeOfDay(jamAkhir)}'),
                            trailing: Icon(Icons.timer),
                            onTap: _pickJamAkhir,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ListTile(
                            title: Text(
                              'Nama Kegiatan',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Masukkan nama kegiatan',
                                ),
                              ),
                            ),
                            trailing: Icon(Icons.timer),
                            onTap: _pickJamAkhir,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _pickJamAwal() async {
    TimeOfDay time = await showTimePicker(
        context: context,
        initialTime: jamAwal,
        builder: (BuildContext context, Widget? child) {
          return Theme(data: ThemeData(), child: child as Widget);
        }) as TimeOfDay;

    if (time != null) {
      setState(() {
        jamAwal = time;
      });
    }
  }

  _pickJamAkhir() async {
    TimeOfDay time = await showTimePicker(
        context: context,
        initialTime: jamAkhir,
        builder: (BuildContext context, Widget? child) {
          return Theme(data: ThemeData(), child: child as Widget);
        }) as TimeOfDay;

    if (time != null) {
      setState(() {
        jamAkhir = time;
      });
    }
  }
}
