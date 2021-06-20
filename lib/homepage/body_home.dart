import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe/homepage/heading_body_home.dart';
import 'package:recipe/homepage/recommend_car_view.dart';
import '../constant.dart';
import 'categories_list.dart';
import 'components/heading_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final String imgName = "assets/images/carrot_cake.jpg",
        titleName = "Carrot cake",
        makeName = "By Mary Cadogan",
        calVal = "256 kcal";
    final VoidCallback function = () {};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingBodyHome(),
        Expanded(
          child: Container(
            width: size.width,
            padding: const EdgeInsets.only(
              top: sPadding * 2,
              left: sPadding,
              right: sPadding / 2,
              bottom: sPadding,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadingText(
                  title: "Categories",
                ),
                const CategoriesHome(),
                const SizedBox(
                  height: sPadding * 2,
                ),
                const HeadingText(
                  title: "Recommend",
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => RecommendCarView(
                        imgName: imgName, titleName: titleName, makeName: makeName, calVal: calVal, function: function),
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
