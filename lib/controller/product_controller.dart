// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:make_up/model/makeup_product.dart';
import 'cart_controller.dart';

class ProductController extends GetxController {
  static const int pageSize = 10;
  static const String apiUrl = 'https://makeup-api.herokuapp.com/api/v1/products.json';
  RxList<MakeupProduct> products = <MakeupProduct>[].obs;
  var isLoading = true.obs;
  var isLastPage = false.obs;
  int currentPage = 1;
  RxString errorMessage = ''.obs;
  final CartController cartController = Get.find<CartController>();

  @override
  void onInit() async {
    await fetchProduct();
    super.onInit();
  }

  Future<void> fetchProduct() async {
    isLoading(true);
    try {
      final http.Response response = await http.get(Uri.parse('$apiUrl?page=$currentPage&limit=$pageSize'));
      if (response.statusCode == 200) {
        final List<dynamic> newProductList = jsonDecode(response.body);

        products = <MakeupProduct>[].obs;

        products.assignAll(newProductList
            .map((json) => MakeupProduct.fromJson(json))
            .cast<MakeupProduct>());
        errorMessage.value = '';
        if (newProductList.isNotEmpty) {
          currentPage++;
        } else {
          isLastPage(true);
        }
      } else {
        errorMessage.value = 'Server responded with status code ${response.statusCode}';
      }
    } on http.ClientException catch (_) {
      errorMessage.value = 'Network error occurred. Please check your internet connection.';
    } catch (e) {
      errorMessage.value = 'An unexpected error occurred. Please try again later.';
      print("Error while getting the data: $e");
    } finally {
      isLoading(false);
    }
  }

  void addToCart(MakeupProduct product) {
    cartController.addToCart(product);
  }
  void loadMoreProduct() {
    if (!isLoading.value && !isLastPage.value) {
      fetchProduct();
    }
  }
}
