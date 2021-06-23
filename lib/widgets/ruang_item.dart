import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/ruang.dart';
import '../screens/ruang_detail_screen.dart';

class RuangItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ruang = Provider.of<Ruang>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          RuangDetailScreen.routeName,
          arguments: ruang.id,
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 150,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                ruang.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(10),
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
                            backgroundColor: Colors.white, color: Colors.blue),
                      )),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black,
                    ],
                    stops: [
                      0.2,
                      1.0
                    ])),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${ruang.nama} ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Wrap(crossAxisAlignment: WrapCrossAlignment.end, children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Text(
                      '${ruang.kapasitas} orang',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
