import 'package:flutter/material.dart';
import 'package:supermall/components/button.dart';
import 'package:supermall/components/customAppBar.dart';

// TODO: 登陆表单没有写
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Container(
            padding: EdgeInsets.only(
              left: 41,
              right: 41,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 50,
                  ),
                  margin: EdgeInsets.only(bottom: 24),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(24, 29, 45, 1),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Welcome back',
                    style: TextStyle(
                      color: Color.fromRGBO(170, 170, 170, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                // 按钮
                Button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
