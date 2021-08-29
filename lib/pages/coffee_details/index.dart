import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supermall/components/customAppBar.dart';
import 'package:supermall/untils/screenutil.dart';

class CoffeeDetailsPage extends StatefulWidget {
  CoffeeDetailsPage({Key? key}) : super(key: key);

  @override
  _CoffeeDetailsPageState createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  TextEditingController _textController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController = new TextEditingController(text: '1');
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      designSize: Size(375, 792),
      orientation: Orientation.portrait,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  left: duSetWidth(25),
                  right: duSetWidth(25),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: duSetHeight(146),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(247, 248, 251, 1),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Image.asset(
                        'assets/images/1.png',
                      ),
                    ),

                    /// Container
                    Container(
                      height: duSetHeight(62),
                      padding: EdgeInsets.only(
                        right: duSetWidth(4),
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(244, 245, 247, 1),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Americano',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 24, 51, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            width: duSetWidth(73),
                            height: duSetHeight(29),
                            decoration: BoxDecoration(
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(216, 216, 216, 0.4),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    int oldNumer =
                                        int.parse(_textController.text);
                                    if (oldNumer > 1) {
                                      oldNumer--;
                                      setState(() {
                                        _textController =
                                            new TextEditingController(
                                                text: oldNumer.toString());
                                      });
                                    } else {
                                      print("最少为1");
                                    }
                                  },
                                  child: Icon(
                                    Icons.line_weight,
                                    size: 14,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: _textController,
                                    onChanged: (value) {
                                      print(value);
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      print(_textController.text);
                                      int oldNumer =
                                          int.parse(_textController.text) + 1;
                                      _textController =
                                          new TextEditingController(
                                              text: oldNumer.toString());
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: duSetHeight(62),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(244, 245, 247, 1),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Shot',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 24, 51, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            child: Wrap(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: duSetWidth(4),
                                    right: duSetWidth(4),
                                  ),
                                  child: Chip(
                                    label: Text('Single'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: duSetWidth(4),
                                    right: duSetWidth(4),
                                  ),
                                  child: Chip(
                                    label: Text('Double'),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      height: duSetHeight(62),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(244, 245, 247, 1),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Select',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 24, 51, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: duSetHeight(62),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(244, 245, 247, 1),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 24, 51, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: duSetHeight(62),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(244, 245, 247, 1),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Ice',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 24, 51, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: duSetHeight(120),
              padding: EdgeInsets.only(
                left: duSetWidth(25),
                right: duSetWidth(25),
              ),
              // decoration: BoxDecoration(color: Colors.pink),
              child: Stack(
                alignment: Alignment.topLeft,
                fit: StackFit.passthrough,
                children: [
                  Positioned(
                    bottom: duSetHeight(20),
                    // width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          width: duSetWidth(315.75),
                          margin: EdgeInsets.only(
                            bottom: duSetHeight(23.7),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 24, 51, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\$3.00",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 24, 51, 1),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: duSetWidth(315.75),
                          height: duSetHeight(46),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(50, 74, 89, 1),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  print('object');
                                },
                                child: Text(
                                  'Checkout',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
