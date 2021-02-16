import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyMaSil extends StatefulWidget {
  @override
  _MyMaSilState createState() => _MyMaSilState();
}

enum MenuType { STORE, CUSTOMER_CENTER, SHARE, LOGOUT }

class MenuItem {
  final String title;
  final String image;
  final MenuType type;

  MenuItem({this.title, this.image, this.type});
}

class _MyMaSilState extends State<MyMaSil> {
  final List<MenuItem> menuItems = [
    MenuItem(
        title: '스토어',
        image: 'assets/images/menu_store.svg',
        type: MenuType.STORE),
    MenuItem(
      title: '고객센터',
      image: 'assets/images/menu_service.svg',
      type: MenuType.CUSTOMER_CENTER,
    ),
    MenuItem(
        title: '마실공유',
        image: 'assets/images/menu_share.svg',
        type: MenuType.SHARE),
    MenuItem(
        title: '로그아웃',
        image: 'assets/images/menu_logout.svg',
        type: MenuType.LOGOUT)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: AppbarTitle(),
        backgroundColor: Colors.white,
        toolbarHeight: 56,
        actions: <Widget>[Acorn(), AlarmBtnRedDot()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              ProfileImage(),
              ProfileNameAge(),
              Expanded(child: Container()),
              WatchProfile()
            ],
          ),
          Container(
            height: 30,
          ),
          Divider(
            thickness: 6,
            color: Color(0xFFf7f7f7),
          ),
          Container(height: 6),
          MenuList(menuItems: menuItems)
        ],
      ),
    );
  }
}

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        '나의 마실',
        style: TextStyle(fontSize: 19, color: Colors.black),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    Key key,
    @required this.menuItems,
  }) : super(key: key);

  final List<MenuItem> menuItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224,
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: SvgPicture.asset(menuItems[index].image),
            title: Container(
                child: Stack(
              children: [
                Text(menuItems[index].title),
                if (menuItems[index].type == MenuType.CUSTOMER_CENTER)
                  Positioned(
                    left: 65,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFff5055),
                          borderRadius: BorderRadius.circular(6)),
                      constraints: BoxConstraints(maxHeight: 4, maxWidth: 4),
                    ),
                  )
              ],
            )),
          );
        },
      ),
    );
  }
}

class AlarmBtnRedDot extends StatelessWidget {
  const AlarmBtnRedDot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: SvgPicture.asset('assets/images/clickable_btn_alarm.svg'),
        ),
        Positioned(
            right: 11,
            top: 17,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFff5055),
                  borderRadius: BorderRadius.circular(6)),
              constraints: BoxConstraints(minHeight: 4, minWidth: 4),
            ))
      ],
    );
  }
}

class Acorn extends StatelessWidget {
  const Acorn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 1, color: Color(0xFFeeeeee))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset('assets/images/acorn_my.svg'),
          SizedBox(width: 3),
          Text(
            '90',
            style: TextStyle(color: Colors.black, fontSize: 13),
          )
        ],
      ),
    );
  }
}

class WatchProfile extends StatelessWidget {
  const WatchProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 16),
      child: Container(
        child: Center(
            child: Text(
          '프로필 보기',
          style: TextStyle(color: Colors.black),
        )),
        width: 93,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(width: 1, color: Color(0xFFeeeeee))),
      ),
    );
  }
}

class ProfileNameAge extends StatelessWidget {
  const ProfileNameAge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, top: 20),
      child: Column(
        children: <Widget>[
          Text(
            '보라빛',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF444444)),
          ),
          Text(
            '  20대 중반',
            style: TextStyle(fontSize: 12, color: Color(0xFF444444)),
          )
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: Color(0xFFeeeeee))),
        width: 70,
        height: 70,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/flutter_logo.png'),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
