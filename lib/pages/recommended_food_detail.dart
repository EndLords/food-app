import 'package:flutter/material.dart';
import 'package:food/widgets/app_icon.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/dimensions.dart';
import 'package:food/widgets/expandable_text.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: Bigtext(
                        size: Dimensions.font26, text: "Karışık Sushi Tabağı")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: Color.fromARGB(255, 231, 147, 78),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/15.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "Çin mutfağında sebze, makaÇin mutfağında sebze, makarna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavada kızgın yağda pişirilir.Çin mutfağında sebze, makarna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavada kızgın yağda pişirilir.Çin mutfağında sebze, makarna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavaÇin mutfağında sebze, makarna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavada kızgın yağda pişirilir.Çin mutfağında sebze, makarna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavada kızgın yağda pişirilir.Çin mutfağında sebze, makarna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavada kızgın yağda pişirilir.Çin mutfağında sebze, makarna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavada kızgın yağda pişirilir.da kızgın yağda pişirilir.rna ve etlerin pişirilmesinde en sık kullanılan yöntem yüksek ateşle yağda kavrulma yöntemidir. Yemek malzemeleri kavrulmadan önce hem pişmeyi çabuklaştırmak, hem de sofrada yemek çubuklarıyla yenmeyi kolaylaştırmak amacıyla lokma büyüklüğünde parçalar halinde kesilir. Malzemeler wok adı verilen orta bölümü çukur bir tavada kızgın yağda pişirilir."),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: Color(0xFF89dad0),
                    icon: Icons.remove),
                Bigtext(
                  text: "\₺12.88 " + " X " + " 0",
                  color: Colors.black,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: Color(0xFF89dad0),
                    icon: Icons.add),
              ],
            ),
          )
        ],
      ),
    );
  }
}
