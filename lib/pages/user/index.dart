import 'package:flutter/material.dart';
import 'package:supermall/untils/Iconfont.dart';

import '../../untils/Iconfont.dart';

class UserPage extends StatefulWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('个人中心'),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(Iconfont.diqufucengtanchujinggao),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(Iconfont.a31shezhi),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(Iconfont.liebiao),
            ),
          ],
        ),
      ],
    );
  }
}
