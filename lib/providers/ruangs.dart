import 'package:flutter/material.dart';

import '../models/ruang.dart';
import 'package:provider/provider.dart';

class Ruangs with ChangeNotifier {
  List<Ruang> _ruangs = [
    Ruang(
      id: 'r1',
      nama: 'Meeting room A',
      kapasitas: 15,
      fasilitas: [
        {
          'nama': 'AC',
          'icon': Icons.ac_unit,
        },
        {
          'nama': 'Wifi',
          'icon': Icons.wifi,
        },
        {
          'nama': 'Projector',
          'icon': Icons.video_settings,
        },
        {
          'nama': 'LCD',
          'icon': Icons.desktop_mac,
        },
      ],
      biaya: 150000,
      satuan: "Jam",
      imageUrl:
          "https://cdn.pixabay.com/photo/2015/05/15/14/22/conference-room-768441_960_720.jpg",
    ),
    Ruang(
      id: 'r2',
      nama: 'Meeting room B',
      kapasitas: 10,
      fasilitas: [
        {
          'nama': 'AC',
          'icon': Icons.ac_unit,
        },
        {
          'nama': 'Wifi',
          'icon': Icons.wifi,
        },
        {
          'nama': 'Projector',
          'icon': Icons.video_settings,
        },
        {
          'nama': 'LCD',
          'icon': Icons.desktop_mac,
        },
      ],
      biaya: 130000,
      satuan: "Jam",
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/03/28/12/17/chairs-2181994_960_720.jpg",
    ),
    Ruang(
      id: 'r3',
      nama: 'Meeting room C',
      kapasitas: 20,
      fasilitas: [
        {
          'nama': 'AC',
          'icon': Icons.ac_unit,
        },
        {
          'nama': 'Wifi',
          'icon': Icons.wifi,
        },
        {
          'nama': 'Projector',
          'icon': Icons.video_settings,
        },
        {
          'nama': 'LCD',
          'icon': Icons.desktop_mac,
        },
      ],
      biaya: 250000,
      satuan: "Jam",
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/03/28/12/06/chairs-2181919_960_720.jpg",
    ),
    Ruang(
      id: 'r4',
      nama: 'Meeting room D',
      kapasitas: 10,
      fasilitas: [
        {
          'nama': 'AC',
          'icon': Icons.ac_unit,
        },
        {
          'nama': 'Wifi',
          'icon': Icons.wifi,
        },
        {
          'nama': 'Projector',
          'icon': Icons.video_settings,
        },
        {
          'nama': 'LCD',
          'icon': Icons.desktop_mac,
        },
      ],
      biaya: 200000,
      satuan: "Jam",
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/03/28/12/11/chairs-2181960_960_720.jpg",
    ),
    Ruang(
      id: 'r5',
      nama: 'Meeting room E',
      kapasitas: 15,
      fasilitas: [
        {
          'nama': 'AC',
          'icon': Icons.ac_unit,
        },
        {
          'nama': 'Wifi',
          'icon': Icons.wifi,
        },
        {
          'nama': 'Projector',
          'icon': Icons.video_settings,
        },
        {
          'nama': 'LCD',
          'icon': Icons.desktop_mac,
        },
      ],
      biaya: 150000,
      satuan: "Jam",
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/03/28/12/16/chairs-2181980_960_720.jpg",
    ),
    Ruang(
      id: 'r6',
      nama: 'Meeting room F',
      kapasitas: 40,
      fasilitas: [
        {
          'nama': 'AC',
          'icon': Icons.ac_unit,
        },
        {
          'nama': 'Wifi',
          'icon': Icons.wifi,
        },
        {
          'nama': 'Projector',
          'icon': Icons.video_settings,
        },
        {
          'nama': 'LCD',
          'icon': Icons.desktop_mac,
        },
      ],
      biaya: 230000,
      satuan: "Jam",
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/03/28/12/06/chairs-2181916_960_720.jpg",
    ),
  ];

  List<Ruang> get getRuangsAll {
    return [..._ruangs];
  }
}
