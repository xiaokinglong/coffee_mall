import 'package:flutter/material.dart';
import 'package:supermall/components/button.dart';
import 'package:supermall/components/customAppBar.dart';
import 'package:supermall/untils/Iconfont.dart';

/// 忘记密码的页面
class ForgotPage extends StatefulWidget {
  ForgotPage({Key? key}) : super(key: key);

  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 50,
                  ),
                  margin: EdgeInsets.only(bottom: 24),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(24, 29, 45, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 46),
                  child: Text(
                    'Enter your email address',
                    style: TextStyle(
                      color: Color.fromRGBO(170, 170, 170, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                // form表单的组件
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        // 用户名
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '请输入email',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(193, 199, 208, 1),
                            ),
                            prefixIcon: Icon(Iconfont.coffeeemail),
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 36),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(193, 199, 208, 1),
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(bottom: 153),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/verification');
                    },
                    child: Button(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
