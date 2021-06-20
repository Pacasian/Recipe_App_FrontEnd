import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../constant.dart';

class CategoriesModel extends StatelessWidget {
  const CategoriesModel({
    Key? key,
    required this.colorVal,
    required this.imgName,
    required this.titleName,
    required this.functionNav,
  }) : super(key: key);

  final Color colorVal;
  final String imgName;
  final String titleName;
  final VoidCallback functionNav;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: functionNav,
      child: Padding(
        padding: const EdgeInsets.only(right: sPadding / 1.5),
        child: Column(
          children: [
            Container(
              width: 110,
              height: 110,
              margin: const EdgeInsets.only(bottom: 4.0),
              decoration: BoxDecoration(
                color: colorVal,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(sPadding),
                  child: Image.asset(imgName),
                ),
              ),
            ),
            Text(
              titleName,
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: colorVal, fontFamily: 'Comfortaa', fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
