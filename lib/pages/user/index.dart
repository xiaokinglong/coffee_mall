import 'package:flutter/material.dart';
import 'package:supermall/untils/Iconfont.dart';

class UserPage extends StatefulWidget {
  UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('个人中心'),
          centerTitle: true,
          floating: true,
          // snap: true,
          // pinned: true,

          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(Iconfont.coffeelogo),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(Iconfont.coffeelogo),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(Iconfont.coffeelogo),
            ),
          ],
          // expandedHeight: 300,
          // flexibleSpace: FlexibleSpaceBar(
          //   title: Text('滚动'),
          //   background: FlutterLogo(),
          // ),
        ),
        SliverToBoxAdapter(
          child: FlutterLogo(),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((content, index) {
              return Container(
                height: 85,
                alignment: Alignment.center,
                color: Colors.primaries[index % Colors.primaries.length],
                child: Text(
                  '$index',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            }, childCount: 25),
          ),
        ),
      ],
    );
  }
}
