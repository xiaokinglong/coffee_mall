import 'package:flutter/material.dart';
import 'package:supermall/untils/screenutil.dart';

import 'coffee_card.dart';

class Home_List extends StatefulWidget {
  Home_List({Key? key}) : super(key: key);

  @override
  _Home_ListState createState() => _Home_ListState();
}

class _Home_ListState extends State<Home_List> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: duSetHeight(24),
        left: duSetWidth(24),
        right: duSetWidth(24),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(50, 74, 89, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
        ),
        // borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: duSetHeight(24),
            ),
            child: Text(
              'Choose your coffee',
              style: TextStyle(
                color: Color.fromRGBO(216, 216, 216, 1),
                fontSize: duSetFontSize(16),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: duSetWidth(16),
                  crossAxisSpacing: duSetHeight(16),
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Coffee_Card();
                }),
            // child: GridView(
            //   padding: EdgeInsets.all(16),
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: duSetWidth(16),
            //     crossAxisSpacing: duSetHeight(16),
            //   ),
            //   children: [
            //     Coffee_Card(),
            //     Coffee_Card(),
            //     Coffee_Card(),
            //     Coffee_Card(),
            //   ],
            // ),
          )
        ],
      ),
    );
  }
}
