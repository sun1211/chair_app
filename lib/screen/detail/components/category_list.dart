import 'package:chair_app/models/chair_list.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final Chair chair;
  final Function press;
  const CategoryList({Key key, this.chair, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 220,
        margin: EdgeInsets.only(bottom: 50),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xfffceade),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60))),
              ),
            ),
            Container(
              height: 200,
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: chair.path,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(chair.path), fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        '${chair.name}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${chair.description}',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${chair.value}',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                  color: Color(0xffff9f24),
                ),
                child: Center(
                  child: Text(
                    'More',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
