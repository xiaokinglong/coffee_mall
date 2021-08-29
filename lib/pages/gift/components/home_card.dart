import 'package:flutter/material.dart';
import 'package:supermall/untils/Iconfont.dart';
import 'package:supermall/untils/screenutil.dart';

class Home_Card extends StatefulWidget {
  Home_Card({Key? key}) : super(key: key);

  @override
  _Home_CardState createState() => _Home_CardState();
}

class _Home_CardState extends State<Home_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: duSetHeight(122),
      margin: EdgeInsets.only(
        top: duSetHeight(18),
        left: duSetWidth(25),
        right: duSetWidth(25),
      ),
      padding: EdgeInsets.only(
        left: duSetWidth(23),
        right: duSetWidth(23),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(50, 74, 89, 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: duSetHeight(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Loyalty card',
                  style: TextStyle(
                    color: Color.fromRGBO(216, 216, 216, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                Text(
                  '4 / 8',
                  style: TextStyle(
                    color: Color.fromRGBO(216, 216, 216, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: duSetHeight(61),
            margin: EdgeInsets.only(
              top: duSetHeight(9),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Iconfont.coffeeorder),
                Icon(Iconfont.coffeeorder),
                Icon(Iconfont.coffeeorder),
                Icon(Iconfont.coffeeorder),
                Icon(Iconfont.coffeeorder),
                Icon(Iconfont.coffeeorder),
                Icon(Iconfont.coffeeorder),
                Icon(Iconfont.coffeeorder),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
