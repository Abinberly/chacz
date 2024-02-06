import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/cart_controller.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/view/res/app_button.dart';
import 'package:make_up/view/res/app_icon_button.dart';
import 'package:make_up/view/res/app_snackbar.dart';
import 'package:make_up/view/res/product_detail_card.dart';
import '../../helpers/strings.dart';

class BuyNowPage extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();
  //final MakeupProduct selectedProduct;
   BuyNowPage({super.key, });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: AppIconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icons.arrow_back,
            iconColor: AppThemes.appPurpleColor,
            splashColor: AppThemes.appLightGreyColor),
        title: Text(
          Strings.buyNow,
          style: AppThemes.headline3(fontSize: height * 0.05),
        ),
      ),body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var selectedProduct in cartController.cartItems)
                ProductDetailCard(
                  image: selectedProduct.imageLink,
                  brand: selectedProduct.brand,
                  price: selectedProduct.price.toString(),
                  description: selectedProduct.description,
                  category: selectedProduct.productType,
                  name: selectedProduct.name,
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .05),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          AppButton(
              title: Strings.cancel,
              titleColor: AppThemes.appPurpleColor,
              buttonColor: AppThemes.appWhiteColor,
              onPressed: () {
                 cartController.clearCart();
                Get.back();
                AppSnackbar.show(
                    messageTitle: Strings.itemRemoved,
                    message: Strings.itemRemovedFrom,
                    titleFontSize: 20,
                    messageFontSize: 15);
              },
              borderColor: AppThemes.appPurpleColor,
              borderRadius: 15,
              height: height * 0.07,
              width: width * 0.4),
          AppButton(
              title: Strings.buyNow,
              titleColor: AppThemes.appWhiteColor,
              buttonColor: AppThemes.appPurpleColor,
              onPressed: () {
                AppSnackbar.show(
                    messageTitle: Strings.itemMoved,
                    message: Strings.itemMovedFor,
                    titleFontSize: 20,
                    messageFontSize: 15);
              },
              borderColor: AppThemes.appPurpleColor,
              borderRadius: 15,
              height: height * 0.07,
              width: width * 0.4),
        ]),
      ),
    );
  }
}
