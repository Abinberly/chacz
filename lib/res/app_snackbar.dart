import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/helpers/app_themes.dart';

class AppSnackbar{
  static void show({
    required String messageTitle,
    required String message,
    required double titleFontSize,
    required double messageFontSize,
    Duration duration = const Duration(seconds: 3),
  }){
    Get.snackbar("", "",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: AppThemes.appWhiteColor,
    duration: duration,
    titleText: Text(messageTitle,style: AppThemes.body1(fontSize: titleFontSize),),
    messageText: Text(message,style: AppThemes.body1(fontSize: messageFontSize),), 
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOut,
      reverseAnimationCurve: Curves.easeIn,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      borderRadius: 15.0,
      colorText: AppThemes.appPurpleColor
    );
  }
}