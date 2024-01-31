import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/bottom_navigation_controller.dart';

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
        );
      }),
    );
  }
}