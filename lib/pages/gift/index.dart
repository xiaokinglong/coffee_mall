import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermall/untils/Iconfont.dart';
import 'package:supermall/untils/screenutil.dart';

import 'components/customAppBar.dart';

class GiftPage extends StatefulWidget {
  GiftPage({Key? key}) : super(key: key);

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<GiftPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(375, 792),
      orientation: Orientation.portrait,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  print(index);
                  if (index == 0) {
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
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
                  } else if (index == 1) {
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: duSetHeight(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'My Points:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(216, 216, 216, 1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '2750',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(216, 216, 216, 1),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            highlightColor: Colors.red,
                            onTap: () {},
                            child: Container(
                              width: duSetWidth(93),
                              height: duSetHeight(28),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(162, 205, 233, 0.19),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              child: Text(
                                '记住我的选择',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(216, 216, 216, 1),
                                  fontSize: 14,
                                  height: 2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (index == 2) {
                    return Container(
                      margin: EdgeInsets.only(
                        top: duSetHeight(31),
                        bottom: duSetHeight(24),
                        left: duSetWidth(25),
                        right: duSetWidth(25),
                      ),
                      child: Text(
                        'History Rewards',
                        style: TextStyle(
                          color: Color.fromRGBO(50, 74, 89, 1),
                          fontSize: 14,
                          height: 1.8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }
                  return Container(
                    height: duSetHeight(74),
                    margin: EdgeInsets.only(
                      left: duSetWidth(25),
                      right: duSetWidth(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Americano',
                                style: TextStyle(
                                  color: Color.fromRGBO(50, 74, 89, 1),
                                  fontSize: 12,
                                  height: 1.2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '24 June | 12:30 PM',
                                style: TextStyle(
                                  color: Color.fromRGBO(50, 74, 89, 0.22),
                                  fontSize: 10,
                                  height: 1.4,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            '+ 12 Pts',
                            style: TextStyle(
                              color: Color.fromRGBO(50, 74, 89, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
