import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe/bloc/recipe_list_bloc.dart';
import 'package:recipe/breakfast/cardview_listing_cat.dart';
import 'package:recipe/model/model.dart';

import '../constant.dart';

// class BodyBreakFast extends StatelessWidget {
//   const BodyBreakFast({
//     Key? key,
//     required this.titleName,
//     required this.appBarColor,
//   }) : super(key: key);
//   final String titleName;
//   final Color appBarColor;
//   final String imgName = "assets/images/carrot_cake.jpg",
//       titleBFName = "Carrot cake",
//       makeName = "By Mary Cadogan",
//       calVal = "256 kcal";
//
//   @override
//   Widget build(BuildContext context) {
//     var _random = new Random();
//     return Scaffold(
//       appBar: buildAppBarCat(),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: StreamBuilder<List<RecipeModel>>(
//             stream: null,
//             builder: (context, snapshot) {
//               return ListView.builder(
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) =>
//                     CardViewListingCat(titleBFName: titleBFName, makeName: makeName, randomNum: _random.nextInt(7)),
//                 itemCount: 5,
//               );
//             }),
//       ),
//     );
//   }
//
//   //CardViewListingCat(titleBFName: titleBFName, makeName: makeName)
//   AppBar buildAppBarCat() {
//     return AppBar(
//       elevation: 0,
//       title: Text(titleName),
//       backgroundColor: appBarColor == null ? sPrimaryColor : appBarColor,
//     );
//   }
// }

class ListingCatHome extends StatefulWidget {
  const ListingCatHome({Key? key, required this.titleName, required this.appBarColor}) : super(key: key);

  final String titleName;
  final Color appBarColor;
  @override
  _ListingCatHomeState createState() => _ListingCatHomeState();
}

class _ListingCatHomeState extends State<ListingCatHome> {
  final myBloc = RecipeListBloc();

  @override
  void initState() {
    myBloc.eventSink.add(RecipeAction.fetch);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _random = new Random();
    return Scaffold(
      appBar: buildAppBarCat(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: StreamBuilder<List<RecipeModel>>(
            stream: myBloc.recipeStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: widget.appBarColor,
                  ),
                );
              }
              return ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => CardViewListingCat(
                  titleBFName: snapshot.data![index].title,
                  makeName: snapshot.data![index].maker,
                  imgData: snapshot.data![index].image,
                  prepTime: snapshot.data![index].time,
                  jbLevel: snapshot.data![index].jobLevel,
                  calData: snapshot.data![index].calories,
                  randomNum: _random.nextInt(7),
                ),
                itemCount: snapshot.data!.length,
              );
            }),
      ),
    );
  }

  AppBar buildAppBarCat() {
    return AppBar(
      elevation: 0,
      title: Text(widget.titleName),
      backgroundColor: widget.appBarColor == null ? sPrimaryColor : widget.appBarColor,
    );
  }
}
