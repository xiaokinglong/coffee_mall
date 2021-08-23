import 'package:flutter/material.dart';
import 'package:supermall/untils/Iconfont.dart';

// TODO: actions 和title 没有进行处理
class CustomAppBar extends StatefulWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              child: Icon(Icons.backup_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
