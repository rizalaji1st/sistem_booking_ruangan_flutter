import 'package:flutter/material.dart';

class TerpesanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(
              'Terpesan',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            subtitle: Text('Kamu telah memesan x ruang'),
          ),
          Card(
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.blue,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: FlutterLogo(size: 56.0),
              title: Text(
                'Rapat Penting Kantor',
                style: TextStyle(color: Colors.blue),
              ),
              subtitle:
                  Text("Second One Text \nThis is Line Third Text\n test"),
              isThreeLine: true,
              trailing: Icon(Icons.more_vert),
            ),
          ),
          
        ],
      ),
    );
  }
}
