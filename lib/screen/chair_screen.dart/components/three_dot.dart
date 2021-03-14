import 'package:flutter/material.dart';

class ThreeDot extends StatelessWidget {
  const ThreeDot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Center(
        child: RotatedBox(
          quarterTurns: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 10,
                width: 10,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange.withOpacity(0.5)),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange.withOpacity(0.5)),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
