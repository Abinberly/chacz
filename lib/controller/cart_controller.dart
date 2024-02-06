import 'package:get/get.dart';

import '../model/makeup_product.dart';

class CartController extends GetxController {
  RxList<MakeupProduct> cartItems = <MakeupProduct>[].obs;
    RxList<MakeupProduct> buyNowItems = <MakeupProduct>[].obs;

  RxInt itemCount = 1.obs;
  void addToCart(MakeupProduct product) {
    cartItems.add(product);
  }
 

  void removeFromCart(MakeupProduct product) {
    cartItems.remove(product);
  }

  void clearCart() {
    cartItems.clear();
  }

  double getCartTotal() {
    return cartItems.fold(0, (sum, item) => sum + item.price);
  }
   void increaseItemCount() {
    itemCount++;
  }

  void decreaseItemCount() {
    if (itemCount > 1) {
      itemCount--;
    }
  }
}
