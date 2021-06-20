import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class HeadingBodyHome extends StatelessWidget {
  const HeadingBodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ;
    return Container(
      height: size.height * 0.15,
      margin: const EdgeInsets.symmetric(
        horizontal: sPadding,
        vertical: sPadding * 2,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Welcome, Sumit!\n\n",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: sTextColor,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold,
                  ),
            ),
            TextSpan(
              text: "Explore recipes,.",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontFamily: 'Comfortaa',
                    color: sTextColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
