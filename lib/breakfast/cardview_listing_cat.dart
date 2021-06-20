import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../constant.dart';

class CardViewListingCat extends StatelessWidget {
  const CardViewListingCat({
    Key? key,
    required this.titleBFName,
    required this.makeName,
    required this.randomNum,
  }) : super(key: key);

  final String titleBFName;
  final String makeName;
  final int randomNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: sPadding / 2, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: sPadding / 2, vertical: sPadding),
      height: 180,
      decoration: BoxDecoration(
        color: colorSwap[randomNum],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: colorSwap[randomNum].withOpacity(0.6),
            offset: const Offset(0, 5),
            blurRadius: 80,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 140,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/carrot_cake.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: sPadding,
              right: sPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: titleBFName,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: sTextColor,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Comfortaa',
                            ),
                      ),
                      TextSpan(
                        text: "\n\n$makeName",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.black54,
                              fontSize: 14,
                              fontFamily: 'Comfortaa',
                            ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          const WidgetSpan(
                            child: Icon(
                              Icons.alarm_on_outlined,
                              size: 20,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: " 55 min",
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontFamily: 'Comfortaa',
                                ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const WidgetSpan(
                            child: Icon(
                              Icons.restaurant_menu_outlined,
                              color: Colors.orange,
                              size: 20,
                            ),
                          ),
                          TextSpan(
                            text: " Easy",
                            style: Theme.of(context).textTheme.headline6!.copyWith(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontFamily: 'Comfortaa',
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      "256 kcal",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: sTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Comfortaa',
                          ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
