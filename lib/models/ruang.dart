import 'package:flutter/material.dart';

class Ruang with ChangeNotifier{
  final String id;
  final String nama;
  final int kapasitas;
  final List<Map<String, Object>> fasilitas;
  final double biaya;
  final String satuan;
  final String imageUrl;
  Ruang(
      {required this.id,
      required this.nama,
      required this.kapasitas,
      required this.fasilitas,
      required this.biaya,
      required this.satuan,
      required this.imageUrl});
}
