import 'package:flutter/material.dart';

class MyPlaza extends StatefulWidget {
  @override
  _MyPlazaState createState() => _MyPlazaState();
}

class _MyPlazaState extends State<MyPlaza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('광장'))
        ],
      ),
    );
  }
}
