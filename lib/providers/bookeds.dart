import 'package:flutter/material.dart';
import 'package:sistem_booking_ruangan_flutter/models/ruang.dart';
import '../models/booked.dart';
import '../providers/ruangs.dart';

class Bookeds with ChangeNotifier {
  List<Booked> _bookeds = [
    Booked(
      id: 'b1',
      idRuang: 'r1',
      nama: 'Rapat pembuatan aplikasi',
      tanggalPesan: DateTime.utc(2021,12,1),
      jamAwal: TimeOfDay(hour: 10, minute: 0),
      jamAkhir: TimeOfDay(hour: 15, minute: 0),
    ),
    Booked(
      id: 'b2',
      idRuang: 'r2',
      nama: 'Rapat pembuatan aplikasi',
      tanggalPesan: DateTime.utc(2021,10,1),
      jamAwal: TimeOfDay(hour: 11, minute: 0),
      jamAkhir: TimeOfDay(hour: 14, minute: 0),
    ),
  ];

  List<Booked> get bookedsAll {
    return [..._bookeds];
  }

  Booked findById(String id) {
    return _bookeds.firstWhere((booked) => booked.id == id);
  }

  Ruang findRuang(String id){
    return Ruangs().findById(id);
  }
}
