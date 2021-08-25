import 'package:flutter/material.dart';

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
      initialRoute: "/layout",
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.white,
          // primarySwatch: Color.fromRGBO(50, 74, 89, 1),
          ),
      home: LayoutPage(),
    );
  }
}
