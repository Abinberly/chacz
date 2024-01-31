import 'package:flutter/material.dart';
import 'package:make_up/helpers/app_themes.dart';

class AppGridTile extends StatelessWidget {
  final String image;
  final String brand;
  final String price;
  final IconData icon;
  final VoidCallback onTap;
  final VoidCallback onIconTap;
  const AppGridTile(
      {super.key,
      required this.image,
      required this.brand,
      required this.price,
      required this.icon,
      required this.onTap,
      required this.onIconTap});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: GridTile(
        child: Column(
          children: [
            Image.network(
              image,
              height: height*0.26,
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
                          style: AppThemes.headline2(fontSize: height*0.02)),
                      Text("\$$price", style: AppThemes.subtitle1(fontSize: height*0.02)),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: onIconTap,
                    icon: Icon(
                      icon,
                      color: AppThemes.appPrimaryColor,
                      size: height*0.04,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
