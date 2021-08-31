import 'package:flutter/material.dart';
import 'package:supermall/components/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/login');
          },
          child: Button(),
        ),
      ),
    );
  }
}
