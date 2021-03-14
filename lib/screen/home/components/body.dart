import 'package:chair_app/screen/home/components/furniture_list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Designer Furniture",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: Text(
              "The best place to buy furniture onine",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  FurnitureList(
                    img: 'assets/image/sofa1.jpg',
                    name: 'SOFA',
                  ),
                  FurnitureList(
                    img: 'assets/image/sofa2.jpg',
                    name: 'CHAIRS',
                  ),
                  FurnitureList(
                    img: 'assets/image/sofa3.jpg',
                    name: 'SEATING',
                  ),
                  FurnitureList(
                    img: 'assets/image/sofa4.jpg',
                    name: 'DECOR',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
