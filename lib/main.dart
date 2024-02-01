import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/product_controller.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/helpers/strings.dart';
import 'package:make_up/view/pages/home_page.dart';
import 'package:make_up/view/pages/product_list_view.dart';

void main() {
  runApp(const MyApp());
  Get.put(ProductController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
      //  primarySwatch: Colors.red
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

