import 'package:flutter/material.dart';
import 'package:supermall/pages/car/index.dart';
import 'package:supermall/pages/comments/index.dart';
import 'package:supermall/pages/home/index.dart';
import 'package:supermall/pages/order/index.dart';
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
        Iconfont.coffeehome,
      ),
      title: Text(''),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Iconfont.coffeegift,
      ),
      title: Text(''),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Iconfont.coffeeorder,
      ),
      title: Text(''),
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(
    //     Icons.home,
    //   ),
    //   title: Text('购物车'),
    // ),
    // BottomNavigationBarItem(
    //   icon: Icon(Iconfont.coffeeorder),
    //   title: Text('我'),
    // ),
  ];

  var pageList = [
    HomePage(),
    CommentsPage(),
    OrderPage(),
    // VipPage(),
    // CarPage(),
    // UserPage(),
  ];
  // note 当前展示的page
  var currentPage;
  var currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currentIndex = 0;
      currentPage = pageList[currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromRGBO(216, 216, 216, 1),
        selectedItemColor: Color.fromRGBO(50, 74, 89, 1),
        elevation: 0,
        iconSize: 20,
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
