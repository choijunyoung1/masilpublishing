import 'package:flutter/material.dart';
import 'package:mymasil/MyMasil.dart';
import 'package:mymasil/tabpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'NotosansKR'
      ),
      home: TabPage()
    );
  }
}

