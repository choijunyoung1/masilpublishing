import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AlertBox extends StatefulWidget {
  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  bool isSelected=false;
  bool isSelected1=false;
  bool isSelected2=false;
  bool isSelected3=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 56,
        title:
        Text('소식함', style: TextStyle(fontSize: 16, color: Colors.black)),
        leading: BackBtn(),
      ),
      body: Column(
        children: <Widget>[
          firstAlert(),
          secondAlert(),
          thirdAlert(),
          lastAlert(),
        ],
      ),
    );
  }

  Container firstAlert() {
    return Container(
      height: 63,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFeeeeee))),),
      child: ListTile(
        onTap: (){
          setState(() {
            isSelected=!isSelected;
          });
        },
        tileColor: isSelected?Color(0xFFfff0f0):Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 16,top: 11),
          child: Text('[마실나온김에 카페]',style: TextStyle(color: Color(0xFF444444),fontSize: 13),),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 16,bottom: 12),
          child: Text('누군가 나의 게시글에 댓글을 달았어요💬',style: TextStyle(color: Color(0xFF909090),fontSize: 12)),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text('12분 전',style: TextStyle(color: Color(0xFF909090),fontSize: 10)),
        ),
      ),
    );
  }

  Container secondAlert() {
    return Container(
          height: 63,
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFeeeeee))),),
          child: ListTile(
            onTap: (){
              setState(() {
                isSelected1=!isSelected1;
              });
            },
            tileColor: isSelected1?Color(0xFFfff0f0):Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(left: 16,top: 11),
              child: Text('[마실나온김에 일상]',style: TextStyle(color: Color(0xFF444444),fontSize: 13),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 16,bottom: 12),
              child: Text('나의 댓글에 답글이 달렸어요👤💬',style: TextStyle(color: Color(0xFF909090),fontSize: 12)),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('30분 전',style: TextStyle(color: Color(0xFF909090),fontSize: 10)),
            ),
          ),
        );
  }

  Container thirdAlert() {
    return Container(
      height: 63,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFeeeeee))),),
      child: ListTile(
        onTap: (){
          setState(() {
            isSelected2=!isSelected2;
          });
        },
        tileColor: isSelected2?Color(0xFFfff0f0):Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 16,top: 11),
          child: Text('[고객센터]',style: TextStyle(color: Color(0xFF444444),fontSize: 13),),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 16,bottom: 12),
          child: Text('문의주신 내용에 답변이 도착했어요',style: TextStyle(color: Color(0xFF909090),fontSize: 12)),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text('40분 전',style: TextStyle(color: Color(0xFF909090),fontSize: 10)),
        ),
      ),
    );
  }

  Container lastAlert() {
    return Container(
          height: 63,
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFeeeeee))),),
          child: ListTile(
            onTap: (){
              setState(() {
                isSelected3=!isSelected3;
              });
            },
            tileColor: isSelected3?Color(0xFFfff0f0):Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(left: 16,top: 11),
              child: Text('[마실]',style: TextStyle(color: Color(0xFF444444),fontSize: 13),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 16,bottom: 12),
              child: Text('알량땅꾸님 안녕하세요',style: TextStyle(color: Color(0xFF909090),fontSize: 12)),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('1시간 전',style: TextStyle(color: Color(0xFF909090),fontSize: 10)),
            ),
          ),
        );
  }
}

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(width:44,height:44,child: SvgPicture.asset('assets/images/clickable_btn_arrow.svg')));
  }
}
