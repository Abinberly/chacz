import 'package:flutter/material.dart';
import 'package:make_up/controller/product_controller.dart';

class ProductLogic {
  final ProductController productController;

  ProductLogic(this.productController);

  bool onScrollEnd(ScrollEndNotification notification) {
    if (notification.metrics.extentAfter == 0) {
      productController.loadMoreProduct();
      return true;
    }
    return false;
  }
}