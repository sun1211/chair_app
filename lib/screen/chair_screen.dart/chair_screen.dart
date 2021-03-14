import 'package:chair_app/components/app_bar.dart';
import 'package:chair_app/models/chair_list.dart';
import 'package:chair_app/screen/chair_screen.dart/components/body.dart';
import 'package:flutter/material.dart';

class MyChair extends StatelessWidget {
  final Chair chair;
  final int id;
  const MyChair({Key key, this.chair, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: Body(
        chair: chair,
        id: id,
      ),
    );
  }
}
