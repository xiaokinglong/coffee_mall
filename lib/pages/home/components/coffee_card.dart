import 'package:flutter/material.dart';
import 'package:supermall/untils/screenutil.dart';

class Coffee_Card extends StatefulWidget {
  Coffee_Card({Key? key}) : super(key: key);

  @override
  _Coffee_CardState createState() => _Coffee_CardState();
}

class _Coffee_CardState extends State<Coffee_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: duSetWidth(154),
      height: duSetHeight(164),
      padding: EdgeInsets.only(
        top: duSetHeight(26),
        right: duSetWidth(26),
        bottom: duSetHeight(26),
        left: duSetWidth(26),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        // borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/1.png'),
          Container(
            margin: EdgeInsets.only(
              top: duSetHeight(17),
            ),
            child: Text(
              'Americano',
              style: TextStyle(
                color: Color.fromRGBO(0, 24, 51, 1),
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
