import 'package:flutter/material.dart';
import 'package:supermall/untils/Iconfont.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: Color.fromRGBO(50, 74, 89, 1),
        borderRadius: BorderRadius.circular(64),
      ),
      child: InkWell(
        onTap: () {
          print(12);
        },
        child: Center(
          child: Icon(
            Iconfont.chaozhijifen,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
