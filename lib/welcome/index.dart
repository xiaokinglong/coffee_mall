import 'package:flutter/material.dart';
import 'package:supermall/components/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Text('普通的咖啡馆'),
      // ),
      body: Center(
        child: Button(),
      ),
    );
  }
}