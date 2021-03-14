import 'package:chair_app/components/app_bar.dart';
import 'package:chair_app/screen/detail/components/body.dart';
import 'package:chair_app/size_config.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: HomeAppBar(context),
      body: Body(),
    );
  }
}
