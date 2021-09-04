import 'package:flutter/material.dart';
import 'package:supermall/untils/Iconfont.dart';
import 'package:supermall/untils/screenutil.dart';

class Home_Header extends StatelessWidget {
  const Home_Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: duSetHeight(34),
        left: duSetWidth(26),
        right: duSetWidth(26),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(216, 216, 216, 1),
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Anderson',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 24, 51, 1),
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                // TODO 后面 在修改
                Container(
                  child: Icon(Iconfont.coffeeuser),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: duSetWidth(27),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/car');
                    },
                    child: Icon(Iconfont.coffeeuser),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
