import 'package:flutter/material.dart';
import 'package:supermall/pages/car/index.dart';
import 'package:supermall/pages/comments/index.dart';
import 'package:supermall/pages/home/index.dart';
import 'package:supermall/pages/user/index.dart';
import 'package:supermall/pages/vip/index.dart';

import '../untils/Iconfont.dart';

class LayoutPage extends StatefulWidget {
  LayoutPage({Key? key}) : super(key: key);

  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  final List<BottomNavigationBarItem> _bottomNavigationBar = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      title: Text('精选'),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      title: Text('点评'),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      title: Text('会员店'),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Iconfont.a1zhanshigouwu),
      title: Text('我'),
    ),
  ];

  var pageList = [
    HomePage(),
    CommentsPage(),
    VipPage(),
    CarPage(),
    UserPage(),
  ];
  // note 当前展示的page
  var currentPage;
  var currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currentIndex = 4;
      currentPage = pageList[currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = pageList[currentIndex];
          });
        },
        items: _bottomNavigationBar,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
