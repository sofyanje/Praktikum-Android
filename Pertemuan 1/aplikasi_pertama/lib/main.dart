import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MenampilkanGambar(),
    debugShowCheckedModeBanner: false,
  ));
}

class MenampilkanGambar extends StatelessWidget {
  const MenampilkanGambar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Pertamaku"),
        actions: [
          Icon(Icons.home),
          Icon(Icons.alarm),
          Icon(Icons.list),
        ],
      ),
      body: Center(
        // child: Image.network('https://picsum.photos/250?image=9'),
        // child: Image.asset(
        //   'assets/images/coderuniska.jpg',
        // ),

        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/coderuniska.jpg'),
              Image.network('https://picsum.photos/250?image=9'),
            ],
          ),
        ),
      ),
    );
  }
}
