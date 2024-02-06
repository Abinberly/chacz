import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/bottom_navigation_controller.dart';
import 'package:make_up/view/res/bottom_navigation.dart';
import 'package:make_up/view/pages/about_page.dart';
import 'package:make_up/view/pages/cart_page.dart';
import 'package:make_up/view/pages/product_list_view.dart';

import 'profile_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
final controller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx((){
        return
        IndexedStack(
          index: controller.tabIndex.value,
          children: [
            ProductListView(),
             CartPage(),
            const ProfilePage(),
            const AboutPage(),
            
          ],
        );
      }),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}