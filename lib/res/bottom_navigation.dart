import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:make_up/controller/bottom_navigation_controller.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/helpers/strings.dart';

class BottomNavigation extends StatelessWidget {
   BottomNavigation({super.key});
   final controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height*0.1,
      child: Obx(
        () {
          return  GNav(
            color: AppThemes.appPurpleColor,
            activeColor: AppThemes.appPurpleColor,
            textStyle: AppThemes.body1(fontSize: height*0.02),
            tabBackgroundColor: AppThemes.appLightGreyColor,
            tabActiveBorder:Border.all(color:AppThemes.appPurpleColor),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            padding:  EdgeInsets.symmetric(vertical: width*0.02),
            tabBorderRadius: 10,
            iconSize: height*0.04,
            gap: width*0.02,
            selectedIndex: controller.tabIndex.value,
            onTabChange: controller.changeTabIndex,
            tabs: const [
              GButton(icon:Icons.home,
              text: Strings.home,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), 
              ),
              GButton(icon:Icons.shopping_bag,
              text: Strings.cart,
               padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), ),
              GButton(icon:Icons.person,
              text: Strings.profile,
               padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), ),
              GButton(icon:Icons.info_rounded,
              text: Strings.about,
               padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), ),
            ]);
        }
      ),
    );
  }
}