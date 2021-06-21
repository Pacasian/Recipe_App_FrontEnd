import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:recipe/breakfast/body_bf.dart';
import 'package:recipe/homepage/categories_model.dart';

import '../constant.dart';

class CategoriesHome extends StatelessWidget {
  const CategoriesHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titleName = [
      "Breakfast",
      "Cake",
      "Dinner",
      "Fast Food",
      "Vegetarian",
    ];
    List<Color> colorVal = const [
      Color(0xFFF4A9A8),
      Color(0xFFCE97B0),
      Color(0xFFFBC6A4),
      Color(0xFFAFB9C8),
      Color(0xFF5F939A),
    ];
    List<String> imgName = [
      "assets/images/breakfast.png",
      "assets/images/cake_slice.png",
      "assets/images/dinner_1.png",
      "assets/images/fast_food.png",
      "assets/images/vegetarian.png",
    ];
    // List<String> titleName=[""];
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => CategoriesModel(
          colorVal: colorVal[index],
          imgName: imgName[index],
          titleName: titleName[index],
          functionNav: () {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListingCatHome(
                    titleName: "Breakfast",
                    appBarColor: colorVal[index] == null ? sPrimaryColor : colorVal[index],
                  ),
                ),
              );
            }
          },
        ),
        itemCount: 5,
      ),
    );
  }
}
