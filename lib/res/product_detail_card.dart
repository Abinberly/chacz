import 'package:flutter/material.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/res/app_icon_button.dart';

class ProductDetailCard extends StatelessWidget {
  final String image;
  final String brand;
  final String price;
  final String category;
  final String description;
  const ProductDetailCard(
      {super.key,
      required this.image,
      required this.brand,
      required this.price,
      required this.description,
      required this.category});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            image,
            height: height * 0.5,
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
                        style: AppThemes.headline2(fontSize: height * 0.04)),
                    Text("  \$$price",
                        style: AppThemes.subtitle1(fontSize: height * 0.03)),
                  ],
                ),
              ),
              Column(
                children: [
                  AppIconButton(
                      onPressed: () {},
                      icon: Icons.favorite_border,
                      iconColor: AppThemes.appPurpleColor,
                      splashColor: AppThemes.applightRedColor),
                  Text(category,
                      style: AppThemes.subtitle1(fontSize: height * 0.02)),
                ],
              ),
            ],
          ),
          Text(
            description,
            style: AppThemes.body1(fontSize: height * 0.015),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
