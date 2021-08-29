import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermall/untils/screenutil.dart';

import 'components/home_card.dart';
import 'components/home_header.dart';
import 'components/home_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(
        children: [
          Home_Header(),
          Home_Card(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: duSetHeight(38),
              ),
              child: Home_List(),
            ),
          )
        ],
      ),
    );
  }
}
