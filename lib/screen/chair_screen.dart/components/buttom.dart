import 'package:flutter/material.dart';

class ButtonBot extends StatelessWidget {
  const ButtonBot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          // bottomLeft: Radius.circular(40),
        ),
        color: Color(0xffff9f24),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Text(
              'Next',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
