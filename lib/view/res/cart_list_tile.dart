import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/cart_controller.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/view/res/app_icon_button.dart';

class CartListTile extends StatelessWidget {
  final String image;
  final String brand;
  final String name;
  final String price;
  final IconData icon;
  final VoidCallback onTap;
    final VoidCallback onIconTap;


   const CartListTile({
    super.key,
    required this.image,
    required this.brand,
    required this.price,
    required this.icon,
    required this.onTap,
    required this.name, 
    required this.onIconTap, 
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: AppThemes.appWhiteColor,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image,
                height: height * 0.2,
                width: width * 0.25,
                fit: BoxFit.scaleDown,
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.08),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(brand,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppThemes.headline3(fontSize: height * 0.04)),
                    Text(name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppThemes.body1(fontSize: height * 0.025)),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$$price",
                              style: AppThemes.subtitle1(
                                  fontSize: height * 0.024)),
                          AppIconButton(
                              onPressed: onIconTap,
                              icon: Icons.delete_outlined,
                              iconColor: AppThemes.appPurpleColor,
                              splashColor: AppThemes.appLightGreyColor)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
