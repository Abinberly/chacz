import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/product_controller.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/model/makeup_product.dart';
import 'package:make_up/view/res/app_icon_button.dart';
import 'package:make_up/view/res/product_detail_card.dart';

class ProductDetailsView extends StatelessWidget {
  final MakeupProduct product;
   ProductDetailsView({Key? key, required this.product}) : super(key: key);
final ProductController productController = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppIconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icons.arrow_back,
            iconColor: AppThemes.appPurpleColor,
            splashColor: AppThemes.applightRedColor),
        title: Text(
          product.brand,
          style: AppThemes.headline3(fontSize: 25),
        ),
        actions: [
          AppIconButton(
              onPressed: () {},
              icon: Icons.share,
              iconColor: AppThemes.appPurpleColor,
              splashColor: AppThemes.applightRedColor),
          AppIconButton(
              onPressed: () {},
              icon: Icons.favorite_border,
              iconColor: AppThemes.appPurpleColor,
              splashColor: AppThemes.applightRedColor),
          AppIconButton(
              onPressed: () {},
              icon: Icons.shopping_bag_outlined,
              iconColor: AppThemes.appPurpleColor,
              splashColor: AppThemes.applightRedColor),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductDetailCard(
              image: product.imageLink,
              brand: product.brand,
              price: product.price.toString(),
              description: product.description,
              category: product.productType,
              name: product.name,
            )),
      ),
    );
  }
}
