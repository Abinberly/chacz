import 'package:flutter/material.dart';
import 'package:make_up/helpers/strings.dart';
import 'package:make_up/view/res/drawer_items.dart';

class DrawerItemList {
  final List<DrawerItems> items;

  DrawerItemList({required this.items});
}

final DrawerItemList drawerItemsList = DrawerItemList(items: [
  DrawerItems(
      title: Strings.home,
      leading: Icons.home_outlined,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
  DrawerItems(
      title: Strings.profile,
      leading: Icons.person_outline,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
  DrawerItems(
      title: Strings.favourites,
      leading: Icons.favorite_outline,
      trailing: Icons.arrow_forward_ios,
      onTap: (){}),
  DrawerItems(
      title: Strings.cart,
      leading: Icons.shopping_cart_outlined,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
  DrawerItems(
      title: Strings.orders,
      leading: Icons.shop_outlined,
      trailing: Icons.arrow_forward_ios,
      onTap: (){}),
  DrawerItems(
      title: Strings.about,
      leading: Icons.info_outline,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
  DrawerItems(
      title: Strings.logOut,
      leading: Icons.logout_outlined,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),

]);
