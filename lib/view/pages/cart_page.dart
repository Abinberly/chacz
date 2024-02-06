import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/product_controller.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/helpers/strings.dart';
import 'package:make_up/view/pages/buynow_page.dart';
import 'package:make_up/view/res/app_button.dart';
import 'package:make_up/view/res/app_snackbar.dart';
import 'package:make_up/view/res/cart_list_tile.dart';

import '../../controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();
  final ProductController productController = Get.find<ProductController>();
  
  CartPage({super.key});
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:  Text(Strings.cart,style: AppThemes.headline3(fontSize: height*0.05),),
      ),
      body: Obx(
        () => cartController.cartItems.isEmpty
            ? const Center(
                child: Text(Strings.emptyCart),
              )
            : ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                   final product = cartController.cartItems[index];
                  return CartListTile(
                      image: product.imageLink,
                      brand: product.brand,
                      price: product.price.toString(),
                      icon: Icons.favorite_outline,
                      onTap: () {
                        Get.to( BuyNowPage());
                       productController.addToCart(product);
                      }, 
                      name: product.name,
                       onIconTap: () {
                        cartController.removeFromCart(product);
                        AppSnackbar.show(
                          messageTitle: Strings.itemRemoved,
                           message: Strings.itemRemovedFrom ,
                            titleFontSize: height*0.02, messageFontSize: height*0.03);
                         },);
                },
              ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.05),
        child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
          AppButton(
              title: Strings.cancel,
              titleColor: AppThemes.appPurpleColor,
              buttonColor: AppThemes.appWhiteColor,
              onPressed: () {
                cartController.clearCart();
                AppSnackbar.show(
                    messageTitle: Strings.itemRemoved,
                    message: Strings.itemRemovedFrom,
                    titleFontSize: 20,
                    messageFontSize: 15);
              },
              borderColor: AppThemes.appPurpleColor,
              borderRadius: 15,
              height: height*0.07,
              width: width*0.4),
          AppButton(
              title: Strings.proceed,
              titleColor: AppThemes.appWhiteColor,
              buttonColor: AppThemes.appPurpleColor,
              onPressed: () {
               //  Get.to(BuyNowPage(product: cartController.cartItems,))
  
                 AppSnackbar.show(
                    messageTitle: Strings.itemMoved,
                    message: Strings.itemMovedFor,
                    titleFontSize: 20,
                    messageFontSize: 15);
                cartController.clearCart();
              },
              borderColor: AppThemes.appPurpleColor,
              borderRadius: 15,
              height: height*0.07,
              width: width*0.4
              ),
        ]),
      ),
    );
  }
}
