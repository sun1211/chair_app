import 'package:chair_app/constants.dart';
import 'package:flutter/material.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      color: kBlackColor,
      icon: Icon(
        Icons.apps,
        size: 30,
      ),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        color: kBlackColor,
        icon: Icon(
          Icons.search,
          size: 30,
        ),
        onPressed: () {},
      ),
    ],
  );
}
