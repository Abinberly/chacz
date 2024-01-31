import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_up/helpers/app_themes.dart';
import 'package:make_up/view/pages/res/app_grid_tile.dart';
import 'package:make_up/view/pages/res/drawer_body.dart';
import 'package:make_up/view/pages/res/drawer_header_widget.dart';
import 'package:make_up/controller/product_controller.dart';
import 'package:make_up/view/pages/res/drawer_items_list.dart';
import '../../helpers/strings.dart';
import 'product_details_view.dart';

class ProductListView extends StatelessWidget {
  final ProductController productController = Get.find();
  ProductListView({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: AppThemes.appGreyColor,
              ));
        }),
        title:  Column(
          children: [
            Text(Strings.appTitle, style: AppThemes.appTitle(fontSize: height*0.04)),
            Text(Strings.appCaption, style: AppThemes.subtitle2(fontSize:height*0.013 )),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined,
                  color: AppThemes.appGreyColor)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline_outlined,
                  color: AppThemes.appGreyColor)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined,
                  color: AppThemes.appGreyColor))
        ],
      ),
      body: Obx(() => productController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : NotificationListener<ScrollEndNotification>(
              onNotification: (ScrollEndNotification notification) {
                if (notification.metrics.extentAfter == 0) {
                  productController.loadMoreProduct();
                }
                return true;
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                    ),
                    itemBuilder: ((context, index) {
                      final product = productController.products[index];
                      return AppGridTile(
                        image: product['image_link'],
                        brand: product['brand'] ?? 'Chakkz Special',
                        price: product['price'],
                        icon: Icons.favorite_border,
                        onTap: () {
                          Get.to(ProductDetailsView(
                            product: product,
                          ));
                        },
                        onIconTap: () {},
                      );
                    })),
              ))),
      drawer: Drawer(
        width: width * 0.6,
        backgroundColor: AppThemes.appLightGreyColor,
        child: Column(
          children: [
            const DrawerHeaderWidget(),
            DrawerBody(
              items: drawerItemsList.items,
            ),
          ],
        ),
      ),
    );
  }
}
