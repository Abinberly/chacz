import 'package:flutter/material.dart';
import 'package:make_up/view/pages/res/drawer_items.dart';

class DrawerBody extends StatelessWidget {
  final List<DrawerItems> items;

  const DrawerBody({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items,
    );
  }
}
