import 'package:flutter/material.dart';
import '../models/user.dart';

class Users with ChangeNotifier {
  List<User> _user = [
    User(
      id: '1',
      nama: 'Guest',
      imagePath: 'https://cdn.pixabay.com/photo/2018/11/13/21/43/instagram-3814049_960_720.png',
      nik: '',
      email: '',
    ),
  ];

  List<User> get getUser{
    return [..._user];
  }
}
