import 'package:flutter/material.dart';
import 'package:supermall/pages/coffee_details/index.dart';

import 'layout/index.dart';

import './router/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/home",
      routes: routes,
      // 处理Named页面跳转 传递参数
      // onGenerateRoute: (RouteSettings setting) {
      //   if (setting.name == '/CoffeeDetailsPage') {
      //     return MaterialPageRoute(
      //       builder: (context) => CoffeeDetailsPage(
      //         title: setting.arguments,
      //         image: setting.arguments,
      //       ),
      //     );
      //   }
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.white,
          // primarySwatch: Color.fromRGBO(50, 74, 89, 1),
          ),
      home: LayoutPage(),
    );
  }
}
