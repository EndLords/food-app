import 'package:flutter/material.dart';
import 'package:food/widgets/app_column.dart';
import 'package:food/widgets/app_icon.dart';
import 'package:food/widgets/dimensions.dart';
import 'package:food/widgets/expandable_text.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //bacground image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/15.jpg"))),
              )),
          //icon widgets

          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_checkout_outlined)
                ],
              )),
          //introduction of food

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(
                      text: "Kar??????k Sushi Taba????",
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Bigtext(text: "????erik"),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                "??in mutfa????nda sebze, makarna ve etlerin pi??irilmesinde en s??k kullan??lan y??ntem y??ksek ate??le ya??da kavrulma y??ntemidir. Yemek malzemeleri kavrulmadan ??nce hem pi??meyi ??abukla??t??rmak, hem de sofrada yemek ??ubuklar??yla yenmeyi kolayla??t??rmak amac??yla lokma b??y??kl??????nde par??alar halinde kesilir. Malzemeler wok ad?? verilen orta b??l??m?? ??ukur bir tavada k??zg??n ya??da pi??irilir."),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Color(0xFFe8e8e8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: Color(0xFFe8e8e8),
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Bigtext(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(
                    Icons.add,
                    color: Color(0xFFe8e8e8),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Bigtext(
                text: "\???123.99  | Sepete Ekle",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Color(0xFF69c5df)),
            )
          ],
        ),
      ),
    );
  }
}
