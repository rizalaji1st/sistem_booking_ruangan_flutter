import 'package:flutter/material.dart';
import '../models/user.dart';

class BuildAkun extends StatelessWidget {
  final User user;
  BuildAkun(this.user);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * .60,
        child: Column(
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
        ),
      ),
    );
  }
}