import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:supermall/untils/Iconfont.dart';

// TODO: actions 和title 没有进行处理
class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({Key? key, required this.title}) : super(key: key);
  const CustomAppBar({Key? key, this.title, this.actions}) : super(key: key);

  // 不是必传的
  final Widget? title;
  final Widget? actions;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Rewards',
              style: TextStyle(
                color: Color.fromRGBO(0, 24, 51, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
