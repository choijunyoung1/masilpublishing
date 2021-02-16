import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AlertBox extends StatefulWidget {
  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class AlertItemModel {
  String category;
  String title;
  String timeAgo;

  AlertItemModel({this.category, this.title, this.timeAgo});
}

class _AlertBoxState extends State<AlertBox> {

  List<AlertItemModel> items = [
    AlertItemModel(category: "[ 마실나온김에 카페 ]", title: "누군가 나의 게시글에 댓글을 달았어요 💬", timeAgo: "12분 전"),
    AlertItemModel(category: "[ 마실나온김에 일상 ]", title: "나의 댓글에 답글이 달렸어요👤💬", timeAgo: "30분 전"),
    AlertItemModel(category: "[ 고객센터 ]", title: "문의주신 내용에 답변이 도착했어요", timeAgo: "40분 전"),
    AlertItemModel(category: "[ 마실 ]", title: "알량땅구님 안녕하세요 ", timeAgo: "1시간 전"),
  ];

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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return AlertItem(
            category: items[index].category,
            title: items[index].title,
            timeAgo: items[index].timeAgo,
          );
        }
      )
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

class AlertItem extends StatefulWidget {

  final String category;
  final String title;
  final String timeAgo;

  const AlertItem({Key key, this.category, this.title, this.timeAgo}) : super(key: key);

  @override
  _AlertItemState createState() => _AlertItemState();
}

class _AlertItemState extends State<AlertItem> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
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
          child: Text(widget.category,style: TextStyle(color: Color(0xFF444444),fontSize: 13),),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 16,bottom: 12),
          child: Text(widget.title,style: TextStyle(color: Color(0xFF909090),fontSize: 12)),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(widget.timeAgo,style: TextStyle(color: Color(0xFF909090),fontSize: 10)),
        ),
      ),
    );
  }
}

