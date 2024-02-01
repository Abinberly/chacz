import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/res/app_button.dart';
import 'package:make_up/res/app_snackbar.dart';

class AppGridTile extends StatelessWidget {
  final String image;
  final String brand;
  final String price;
  final IconData icon;
  final VoidCallback onTap;
  final VoidCallback onIconTap;
  final VoidCallback onTapCart;

  const AppGridTile(
      {super.key,
      required this.image,
      required this.brand,
      required this.price,
      required this.icon,
      required this.onTap,
      required this.onIconTap,
      required this.onTapCart});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: GridTile(
        child: Column(
          children: [
            Image.network(
              image,
              height: height * 0.26,
              width: double.maxFinite,
              fit: BoxFit.scaleDown,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(brand,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppThemes.headline2(fontSize: height * 0.02)),
                      Text("\$$price",
                          style: AppThemes.subtitle1(fontSize: height * 0.02)),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: onIconTap,
                    icon: Icon(
                      icon,
                      color: AppThemes.appRedColor,
                      size: height * 0.04,
                    ))
              ],
            ),
            AppButton(
                title: 'ADD TO BAG',
                titleColor: AppThemes.appPurpleColor,
                buttonColor: AppThemes.appWhiteColor,
                onPressed: onTapCart,
                // () {
                //   AppSnackbar.show(
                //       messageTitle: 'Item Added',
                //       message: 'Item Added to your bag Succesfully...',
                //       titleFontSize: height * 0.03,
                //       messageFontSize: height * 0.02);
                // },
                borderColor: AppThemes.appPurpleColor,
                borderRadius: 10,
                height: height * 0.05,
                width: width)
          ],
        ),
      ),
    );
  }
}
