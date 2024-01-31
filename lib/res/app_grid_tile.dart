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
    return GestureDetector(
      onTap: onTap,
      child: GridTile(
        child: Column(
          children: [
            Image.network(
              image,
              height: 120,
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
                          style: AppThemes.headline2),
                      Text("\$$price", style: AppThemes.subtitle1),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: onIconTap,
                    icon: Icon(
                      icon,
                      color: AppThemes.appPrimaryColor,
                      size: 20,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
