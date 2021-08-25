import 'package:flutter/material.dart';
import 'package:supermall/components/button.dart';
import 'package:supermall/components/customAppBar.dart';
import 'package:supermall/untils/Iconfont.dart';

/// 注册的页面
class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    'Sign up',
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
                    'Create an account here',
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
                          /// 键盘的类型 相当于 input的type
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '请输入用户名',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(193, 199, 208, 1),
                            ),
                            prefixIcon: Icon(Iconfont.coffeeuser),
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
                      Container(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '请输入手机号码',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(193, 199, 208, 1),
                            ),
                            prefixIcon: Icon(Iconfont.coffeeuser),
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
                      Container(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '请输入email 地址',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(193, 199, 208, 1),
                            ),
                            prefixIcon: Icon(Iconfont.coffeeuser),
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
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        // 密码
                        child: TextField(
                          /// 密码形式
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '请输入密码',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(193, 199, 208, 1),
                            ),
                            prefixIcon: Icon(Iconfont.coffeepass),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // 按钮
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 39),
                  child: GestureDetector(
                    onTap: () {
                      print('跳转到找回密码的页面');
                    },
                    child: Text(
                      'By signing up you agree with our Terms of Use',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(50, 74, 89, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: () {
                      print('登陆成功之后 跳转页面');
                      Navigator.pushNamed(context, '/layout');
                    },
                    child: Button(),
                  ),
                ),

                Container(
                  child: Row(
                    children: [
                      Text(
                        'New member?',
                        style: TextStyle(
                          color: Color.fromRGBO(170, 170, 170, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('跳转到注册的页面');
                          Navigator.pushNamed(context, '/sign_up');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color.fromRGBO(50, 74, 89, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
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
