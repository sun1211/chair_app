import 'package:chair_app/models/chair_list.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.id,
    @required this.chair,
  }) : super(key: key);

  final int id;
  final Chair chair;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100,
            height: 60,
            child: Center(
              child: Text(
                id < 9 ? '0${id + 1}' : '${id + 1}',
                style: TextStyle(
                    color: Color(0xffffcdb6),
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${chair.name}',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'This chair is trim, clever and quite the looker. The uphostered seat and adjustable height provide a comfy seating for hours.',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
