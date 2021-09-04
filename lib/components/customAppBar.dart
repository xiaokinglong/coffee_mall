import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supermall/untils/Iconfont.dart';

// TODO: actions 和title 没有进行处理
class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({Key? key, required this.title}) : super(key: key);
  const CustomAppBar({Key? key, this.title, this.actions}) : super(key: key);

  // 不是必传的
  final title;
  final actions;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(Iconfont.coffeeleft),
            ),
          ),
          Container(
            child: Text(title),
          ),
          InkWell(
            child: Container(
              child: Icon(Iconfont.coffeecar),
            ),
          ),
        ],
      ),
    );
  }
}
