import 'package:flutter/material.dart';

class Booked with ChangeNotifier {
  final String id;
  final String idRuang;
  final String nama;
  final DateTime tanggalPesan;
  final TimeOfDay jamAwal;
  final TimeOfDay jamAkhir;
  Booked({
    required this.id,
    required this.idRuang,
    required this.nama,
    required this.tanggalPesan,
    required this.jamAwal,
    required this.jamAkhir,
  });
}
