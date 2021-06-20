import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:recipe/homepage/heading_body_home.dart';
import '../../constant.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: sPadding),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),
      ),
    );
  }
}
