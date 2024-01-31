import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/product_controller.dart';
import 'package:make_up/pages/product_list_view.dart';

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
      title: 'Mkeup',
      theme: ThemeData(
       primarySwatch: Colors.red
      ),
      home: ProductListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

