import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermall/components/customAppBar.dart';
import 'package:supermall/untils/screenutil.dart';

class CarPage extends StatefulWidget {
  CarPage({Key? key}) : super(key: key);

  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
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
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.expand,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 100),
                // decoration: BoxDecoration(color: Colors.pink),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      key: Key(index.toString()),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: duSetWidth(24),
                          right: duSetWidth(24),
                          bottom: duSetHeight(21),
                        ),
                        width: duSetWidth(327),
                        height: duSetHeight(96),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(247, 248, 251, 1),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: duSetWidth(10),
                                right: duSetWidth(12),
                              ),
                              width: duSetWidth(72),
                              height: duSetHeight(57),
                              child: Image.asset(
                                'assets/images/1.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Americano',
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 24, 51, 1),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'single | iced | medium | full ice',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                          fontSize: 10,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'x 1',
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 0.57),
                                          fontSize: 16,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: duSetWidth(6)),
                              child: Text(
                                "\$3.00",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 24, 51, 1),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 0,
                width: MediaQuery.of(context).size.width,
                child: CustomAppBar(title: '购物车'),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 100,
                  child: Row(
                    children: [
                      Container(),
                      Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: FlatButton(
                          onPressed: () => {},
                          child: Text('Checkout'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
