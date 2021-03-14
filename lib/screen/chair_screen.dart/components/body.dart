import 'package:chair_app/models/chair_list.dart';
import 'package:flutter/material.dart';

import 'buttom.dart';
import 'header.dart';
import 'three_dot.dart';

class Body extends StatelessWidget {
  final Chair chair;
  final int id;
  const Body({Key key, this.chair, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(id: id, chair: chair),
            Row(
              children: [
                ThreeDot(),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Color(0xfffceade),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                          ),
                        ),
                        child: Column(
                          children: [
                            Hero(
                              tag: '${chair.path}',
                              child: Container(
                                height: 300,
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(chair.path),
                                        fit: BoxFit.contain)),
                              ),
                            ),
                            Container(
                              height: 150,
                              padding: EdgeInsets.only(left: 40),
                              child: GridView.count(
                                crossAxisCount: 2,
                                childAspectRatio: 5.5,
                                children: <Widget>[
                                  Text('Style'),
                                  Text("Cushion Type"),
                                  Text(
                                    "Modern",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Soft",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Size'),
                                  Text("Height"),
                                  Text(
                                    "Standard",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Standard",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            ButtonBot(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
