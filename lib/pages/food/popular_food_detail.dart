import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/exandable_text_widget.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/food0.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // icon widgets
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // food details
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImgSize - Dimensions.height30,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius30),
                  topRight: Radius.circular(Dimensions.radius30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Intoduce"),
                  // expandable text widget
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text:
                            "lkjhkh khkshkf sdhfksh fkjhskhf klh klsdhfklh sfkjh skajfh ksh fkhsafkhksahfkhsakfj skfh kls fkj safkjh ks fkh kjshf dkj  ksha skhf klsha fklhasklfhklajshf klhsa fkljhs afkljh skjhfklsajhflkjsahf kljsh fklsh fklas fklhs afdlkh kljh faklh alkshf klash dfklh salkfh sklfh dddiglh dsfkgdlf;k gjkldfsjg l;djffgl;kjdff gl;djffg l;kdffj g;ldksffj gl;kdsfkj gl;kdffjg l;kdffjg l;dkffjg l;dsfj gl;dskj gl;kdfj glk;jd glk;jdf sl;gj dsl;gj dlfk;j gldk;ffj gl;kdff jgl;dfsjf gl;djf glk;dj gl;d fjglkdjf glkdjf fl;gkj dsflkgj df;slfgj dl;ffgj lkjhkh khkshkf sdhfksh fkjhskhf klh klsdhfklh sfkjh skajfh ksh fkhsafkhksahfkhsakfj skfh kls fkj safkjh ks fkh kjshf dkj  ksha skhf klsha fklhasklfhklajshf klhsa fkljhs afkljh skjhfklsajhflkjsahf kljsh fklsh fklas fklhs afdlkh kljh faklh alkshf klash dfklh salkfh sklfh dddiglh dsfkgdlf;k gjkldfsjg l;djffgl;kjdff gl;djffg l;kdffj g;ldksffj gl;kdsfkj gl;kdffjg l;kdffjg l;dkffjg l;dsfj gl;dskj gl;kdfj glk;jd glk;jdf sl;gj dsl;gj dlfk;j gldk;ffj gl;kdff jgl;dfsjf gl;djf glk;dj gl;d fjglkdjf glkdjf fl;gkj dsflkgj df;slfgj dl;ffgj lkjhkh khkshkf sdhfksh fkjhskhf klh klsdhfklh sfkjh skajfh ksh fkhsafkhksahfkhsakfj skfh kls fkj safkjh ks fkh kjshf dkj  ksha skhf klsha fklhasklfhklajshf klhsa fkljhs afkljh skjhfklsajhflkjsahf kljsh fklsh fklas fklhs afdlkh kljh faklh alkshf klash dfklh salkfh sklfh dddiglh dsfkgdlf;k gjkldfsjg l;djffgl;kjdff gl;djffg l;kdffj g;ldksffj gl;kdsfkj gl;kdffjg l;kdffjg l;dkffjg l;dsfj gl;dskj gl;kdfj glk;jd glk;jdf sl;gj dsl;gj dlfk;j gldk;ffj gl;kdff jgl;dfsjf gl;djf glk;dj gl;d fjglkdjf glkdjf fl;gkj dsflkgj df;slfgj dl;ffgj lkjhkh khkshkf sdhfksh fkjhskhf klh klsdhfklh sfkjh skajfh ksh fkhsafkhksahfkhsakfj skfh kls fkj safkjh ks fkh kjshf dkj  ksha skhf klsha fklhasklfhklajshf klhsa fkljhs afkljh skjhfklsajhflkjsahf kljsh fklsh fklas fklhs afdlkh kljh faklh alkshf klash dfklh salkfh sklfh dddiglh dsfkgdlf;k gjkldfsjg l;djffgl;kjdff gl;djffg l;kdffj g;ldksffj gl;kdsfkj gl;kdffjg l;kdffjg l;dkffjg l;dsfj gl;dskj gl;kdfj glk;jd glk;jdf sl;gj dsl;gj dlfk;j gldk;ffj gl;kdff jgl;dfsjf gl;djf glk;dj gl;d fjglkdjf glkdjf fl;gkj dsflkgj df;slfgj dl;ffgj",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeight,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
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
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height10 * 1.5,
                bottom: Dimensions.height10 * 1.5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius15),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height10 * 1.5,
                bottom: Dimensions.height10 * 1.5,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius15),
              ),
              child: BigText(text: "\$ 12 | Add to cart", color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
