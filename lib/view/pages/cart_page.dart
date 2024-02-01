import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/controller/product_controller.dart';

import '../../controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();
  final ProductController productController = Get.find<ProductController>();
   CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Obx(
        () => cartController.cartItems.isEmpty
            ? const Center(
                child: Text('Your cart is empty.'),
              )
            : ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final product = cartController.cartItems[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('\$${product.price.toString()}'),
                    
                  );
                },
              ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
           
            //cartController.clearCart();
          },
          child: const Text('Proceed to Checkout'),
        ),
      ),
    );
  }
}
