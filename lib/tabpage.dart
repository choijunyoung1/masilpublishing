import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mymasil/MyMasil.dart';
import 'package:mymasil/map.dart';
import 'package:mymasil/plaza.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 2;
  List _pages = [MyMap(), MyPlaza(), MyMaSil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex != 0
                  ? SvgPicture.asset(
                      'assets/images/bottomnavigation/tabbar_map_off.svg')
                  : SvgPicture.asset(
                      'assets/images/bottomnavigation/tabbar_map_on.svg'),
              title: _selectedIndex !=0?Text('마을',style: TextStyle(fontSize: 11),):Text('마을',style: TextStyle(color: Color(0xFFfb7579),fontSize: 11),)),
          BottomNavigationBarItem(
              icon: _selectedIndex != 1
                  ? SvgPicture.asset(
                      'assets/images/bottomnavigation/tabbar_plaza_off.svg')
                  : SvgPicture.asset(
                      'assets/images/bottomnavigation/tabbar_plaza_on.svg'),
              title: _selectedIndex !=1?Text('광장',style: TextStyle(fontSize: 11)):Text('광장',style: TextStyle(color: Color(0xFFfb7579),fontSize: 11),)),
          BottomNavigationBarItem(
              icon: _selectedIndex != 2
                  ? SvgPicture.asset(
                      'assets/images/bottomnavigation/tabbar_profile_off.svg')
                  : SvgPicture.asset(
                      'assets/images/bottomnavigation/tabbar_profile_on.svg'),
              title: _selectedIndex !=2?Text('나의 마실',style: TextStyle(fontSize: 11)):Text('나의 마실',style: TextStyle(color: Color(0xFFfb7579),fontSize: 11),)),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
