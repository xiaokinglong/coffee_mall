import 'package:flutter/material.dart';
import 'package:supermall/components/button.dart';
import 'package:supermall/components/customAppBar.dart';
import 'package:supermall/untils/Iconfont.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermall/untils/screenutil.dart';

// TODO: 需要跳转的页面还没有写 然后需要替换正确的icon;
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool isHidePass = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isHidePass = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 792),
        orientation: Orientation.portrait);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Container(
            padding: EdgeInsets.only(
              left: duSetWidth(41),
              right: duSetWidth(41),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: duSetHeight(50),
                  ),
                  margin: EdgeInsets.only(
                    bottom: duSetHeight(24),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: duSetFontSize(22),
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(24, 29, 45, 1),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: duSetHeight(46),
                  ),
                  child: Text(
                    'Welcome back',
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
                        margin: EdgeInsets.only(
                          bottom: duSetHeight(36),
                        ),
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
                        margin: EdgeInsets.only(
                          bottom: duSetHeight(24),
                        ),
                        // 密码
                        child: TextField(
                          /// 密码形式
                          obscureText: isHidePass,

                          /// 键盘的类型 相当于 input的type
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: '请输入密码',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(193, 199, 208, 1),
                            ),
                            prefixIcon: Icon(Iconfont.coffeepass),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isHidePass = !isHidePass;
                                });
                              },
                              child: Icon(Iconfont.coffeeeyes),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // 按钮
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    bottom: duSetHeight(134),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgot');
                      print('跳转到找回密码的页面');
                    },
                    child: Text(
                      'Forgot Password?',
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
                  margin: EdgeInsets.only(
                    bottom: duSetHeight(129),
                  ),
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
