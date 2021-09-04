import 'package:flutter/material.dart';
import 'package:supermall/pages/coffee_details/index.dart';
import 'package:supermall/untils/screenutil.dart';

class Coffee_Card extends StatefulWidget {
  Coffee_Card({Key? key, this.title, this.image}) : super(key: key);

  final title;
  final image;

  @override
  _Coffee_CardState createState() => _Coffee_CardState();
}

class _Coffee_CardState extends State<Coffee_Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: duSetWidth(154),
      height: duSetHeight(164),
      padding: EdgeInsets.only(
        top: duSetHeight(16),
        right: duSetWidth(26),
        bottom: duSetHeight(16),
        left: duSetWidth(26),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        // borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new CoffeeDetailsPage(
                title: widget.title,
                image: widget.image,
              ),
            ),
          );
          // Navigator.pushNamed(context, '/CoffeeDetailsPage');
        },
        child: Column(
          children: [
            Container(
              width: duSetWidth(102),
              height: duSetHeight(75),
              child: Hero(
                tag: widget.image,
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: duSetHeight(10),
              ),
              child: Text(
                widget.title,
                maxLines: 1,
                style: TextStyle(
                  color: Color.fromRGBO(0, 24, 51, 1),
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
