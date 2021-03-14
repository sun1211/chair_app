import 'package:chair_app/models/chair_list.dart';
import 'package:chair_app/screen/chair_screen.dart/chair_screen.dart';
import 'package:chair_app/screen/detail/components/category_list.dart';
import 'package:chair_app/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
              'Seating',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 30, top: 5),
            child: Text(
              'The premium quality seating solutions',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              // child: Column(
              //   children: [
              //     CategoryList(
              //       chair: listChair[0],
              //       press: () {},
              //     ),
              //     CategoryList(
              //       chair: listChair[1],
              //       press: () {},
              //     ),
              //     CategoryList(
              //       chair: listChair[2],
              //       press: () {},
              //     ),
              //   ],
              // ),
              child: Container(
                  height: SizeConfig.isPortrait ? 600 : 220,
                  child: ListView.builder(
                    itemCount: listChair.length,
                    itemBuilder: (context, index) => CategoryList(
                      chair: listChair[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyChair(
                              chair: listChair[index],
                              id: index,
                            ),
                          ),
                        );
                      },
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
