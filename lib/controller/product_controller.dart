import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:make_up/model/makeup_product.dart';

class ProductController extends GetxController {
  static const int _pageSize = 10;
  RxList<MakeupProduct> products = <MakeupProduct>[].obs;
  var isLoading = true.obs;
  var isLastPage = false.obs;
  int currentPage = 1;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  Future<void> fetchProduct() async {
    isLoading(true);
    try {
      final response = await http.get(Uri.parse(
          'https://makeup-api.herokuapp.com/api/v1/products.json?page=$currentPage&limit=$_pageSize'));
      if (response.statusCode == 200) {
        final List<dynamic> newProductList = jsonDecode(response.body);

        // Use RxList.obs factory method to ensure correct type
        products = <MakeupProduct>[].obs;

        // Add new items
        products.assignAll(newProductList
            .map((json) => MakeupProduct.fromJson(json))
            .cast<MakeupProduct>());

        if (newProductList.isNotEmpty) {
          currentPage++;
        } else {
          isLastPage(true);
        }
      } else {
        print('HTTP request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print("Error while getting the data is $e");
    } finally {
      isLoading(false);
    }
  }

  void loadMoreProduct() {
    if (!isLoading.value && !isLastPage.value) {
      fetchProduct();
    }
  }
}
