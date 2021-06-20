import 'package:flutter/material.dart';
import '../constant.dart';

class RecommendCarView extends StatelessWidget {
  const RecommendCarView({
    Key? key,
    required this.imgName,
    required this.titleName,
    required this.makeName,
    required this.calVal,
    required this.function,
  }) : super(key: key);

  final String imgName;
  final String titleName;
  final String makeName;
  final String calVal;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 150,
      child: Card(
        child: Row(
          children: [
            Container(
              width: 120,
              margin: const EdgeInsets.only(
                top: sPadding / 2,
                bottom: sPadding / 2,
                left: sPadding / 2,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),

                // color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imgName,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: sPadding / 2,
                  left: sPadding / 2,
                  right: sPadding / 2,
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        titleName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                      subtitle: Text(
                        "\n $makeName",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          calVal,
                          style: Theme.of(context).textTheme.button!.copyWith(
                                color: sTextColor,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Comfortaa',
                              ),
                        ),
                        const Spacer(),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: function,
                          icon: const Icon(
                            Icons.favorite_border_outlined,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
