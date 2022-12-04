import 'package:flutter/material.dart';
import 'package:food/widgets/small_text.dart';

import 'big_text.dart';
import 'dimensions.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Bigtext(text: text),
      SizedBox(height: Dimensions.height10),
      Row(
        children: [
          Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: Color(0xFF89dad0),
                        size: 15,
                      ))),
          const SizedBox(
            width: 10,
          ),
          Smalltext(text: "4.5"),
          const SizedBox(
            width: 10,
          ),
          Smalltext(text: "1287"),
          const SizedBox(
            width: 5,
          ),
          Smalltext(text: "comments")
        ],
      ),
      SizedBox(
        height: Dimensions.height20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: Color(0xFFFFD740)),

          /////////////////////////////////////////////////
          const IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              iconColor: Color(0xFF89dad0)),

          ///////////////////////////////////
          const IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32min",
              iconColor: Color(0xFFFFD740)),
        ],
      ),
    ]);
  }
}
