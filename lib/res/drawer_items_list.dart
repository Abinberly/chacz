import 'package:flutter/material.dart';
import 'package:make_up/helpers/strings.dart';
import 'package:make_up/res/drawer_items.dart';

class DrawerItemList {
  final List<DrawerItems> items;

  DrawerItemList({required this.items});
}

final DrawerItemList drawerItemsList = DrawerItemList(items: [
  DrawerItems(
      title: Strings.home,
      leading: Icons.home,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
  DrawerItems(
      title: Strings.profile,
      leading: Icons.person,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
  DrawerItems(
      title: Strings.about,
      leading: Icons.info,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
  DrawerItems(
      title: Strings.logOut,
      leading: Icons.logout_outlined,
      trailing: Icons.arrow_forward_ios,
      onTap: () {}),
]);
