import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/cart_controller.dart';
import 'package:make_up/controller/product_controller.dart';
import 'package:make_up/helpers/strings.dart';
import 'package:make_up/view/pages/home_page.dart';

void main() {
  Get.put(CartController());
  Get.put(ProductController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

