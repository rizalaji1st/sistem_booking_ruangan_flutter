import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistem_booking_ruangan_flutter/models/booked.dart';
import '../providers/bookeds.dart';

class TerpesanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _bookedProvider = Provider.of<Bookeds>(context);
    final List<Booked> _bookeds = _bookedProvider.bookedsAll;
    final localizations = MaterialLocalizations.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(
              'Terpesan',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            subtitle: Text('Kamu telah memesan ${_bookeds.length} ruang'),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: _bookeds.length,
            separatorBuilder: (_, int index) => Divider(color: Colors.white,),
            itemBuilder: (_2, int index) => Card(
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    Bookeds().findRuang(_bookeds[index].idRuang).imageUrl,
                  ),
                  radius: 30.0,
                  backgroundColor: Colors.transparent,
                ),
                isThreeLine: true,
                title: Text(
                  _bookeds[index].nama,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                subtitle: Text(
                    "${Bookeds().findRuang(_bookeds[index].idRuang).nama} \n ${DateFormat('yyyy-MM-dd').format(_bookeds[index].tanggalPesan)} \n ${localizations.formatTimeOfDay(_bookeds[index].jamAwal)} - ${localizations.formatTimeOfDay(_bookeds[index].jamAkhir)}  WIB"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
