import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class ProductController extends GetxController{
  static const int _pageSize = 10;
  var products = <dynamic>[].obs;
  var isLoading = true.obs;
  var isLastPage = false.obs;
  int currentPage = 1;
  @override
  void onInit(){
    fetchProduct();
    super.onInit();
  }
  Future<void>fetchProduct() async{
    isLoading(true);
    try{
    final response = await http.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?page=$currentPage&limit=$_pageSize'));
    if (response.statusCode == 200){
      final List<dynamic>newProduct = jsonDecode(response.body);
      if (newProduct.isNotEmpty){
        products.addAll(newProduct);
        currentPage ++;
      }else{
        isLastPage(true);
      }
    }else{
      // ignore: avoid_print
      print("Error fetching the products");
    }
    }catch(e){
      // ignore: avoid_print
      print("Error while getting the data is $e");
    }
    finally{
      isLoading(false);
    }
  }
  void loadMoreProduct(){
    if(!isLoading.value && !isLastPage.value){
      fetchProduct();
    }
  }
}