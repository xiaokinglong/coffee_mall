import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermall/untils/Iconfont.dart';
import 'package:supermall/untils/screenutil.dart';

/// 我的订单页面
class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  /// tabs的控制器
  var _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      designSize: Size(375, 792),
      orientation: Orientation.portrait,
    );
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('后期进行自定义'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.blue[200],
          labelColor: Colors.white,
          tabs: [
            new Tab(text: 'On going'),
            new Tab(text: 'History'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: duSetHeight(110),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(244, 245, 247, 1),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: duSetWidth(32),
                    right: duSetHeight(45),
                  ),
                  padding: EdgeInsets.only(
                    top: duSetHeight(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                '24 June | 12:30 PM',
                                style: TextStyle(
                                  color: Color.fromRGBO(50, 74, 89, 0.22),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: duSetHeight(10),
                                bottom: duSetHeight(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: duSetWidth(12),
                                    ),
                                    child: Icon(
                                      Iconfont.coffeeorder,
                                      size: 10,
                                    ),
                                  ),
                                  Text(
                                    'Americano',
                                    style: TextStyle(
                                      color: Color.fromRGBO(50, 74, 89, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: duSetWidth(12),
                                    ),
                                    child: Icon(
                                      Iconfont.coffeeadders,
                                      size: 10,
                                    ),
                                  ),
                                  Container(
                                    width: duSetWidth(210),
                                    child: Text(
                                      '3 Addersion Court Chino Hills, HO56824, United State',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Color.fromRGBO(50, 74, 89, 1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          '\$' + (3.00 * index).toString(),
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
              itemCount: 200,
            ),
          ),
          Container(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: duSetHeight(110),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(244, 245, 247, 1),
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: duSetWidth(32),
                    right: duSetHeight(45),
                  ),
                  padding: EdgeInsets.only(
                    top: duSetHeight(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                '24 June | 12:30 PM',
                                style: TextStyle(
                                  color: Color.fromRGBO(50, 74, 89, 0.22),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: duSetHeight(10),
                                bottom: duSetHeight(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: duSetWidth(12),
                                    ),
                                    child: Icon(
                                      Iconfont.coffeeorder,
                                      size: 10,
                                    ),
                                  ),
                                  Text(
                                    'Americano',
                                    style: TextStyle(
                                      color: Color.fromRGBO(50, 74, 89, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: duSetWidth(12),
                                    ),
                                    child: Icon(
                                      Iconfont.coffeeadders,
                                      size: 10,
                                    ),
                                  ),
                                  Container(
                                    width: duSetWidth(210),
                                    child: Text(
                                      '3 Addersion Court Chino Hills, HO56824, United State',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Color.fromRGBO(50, 74, 89, 1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          '\$' + (3.00 * index).toString(),
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
              itemCount: 200,
            ),
          ),
        ],
      ),
    );
  }
}
