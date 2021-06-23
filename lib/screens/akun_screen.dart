import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_booking_ruangan_flutter/models/user.dart';
import 'package:sistem_booking_ruangan_flutter/widget/appbar_widget.dart';
import 'package:sistem_booking_ruangan_flutter/widget/numbers_widget.dart';
import 'package:sistem_booking_ruangan_flutter/widget/profile_widget.dart';
import '../providers/users.dart';

class AkunScreen extends StatefulWidget {
  @override
  _AkunScreenState createState() => _AkunScreenState();
}

class _AkunScreenState extends State<AkunScreen> {
  @override
  Widget build(BuildContext context) {
    var users = Users().getUser;
    var user = users[0];
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.nama,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            user.nik,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );
}
