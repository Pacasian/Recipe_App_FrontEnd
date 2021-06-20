import 'package:flutter/material.dart';
import 'package:recipe/constant.dart';

import 'body_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sPrimaryColor,
      appBar: buildAppBar(),
      body: BodyHome(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.sort,
            size: 32,
          )),
    );
  }
}
