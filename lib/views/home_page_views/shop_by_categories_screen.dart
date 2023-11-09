import 'package:bai_tap_ui_login/import_assets/image_management_png.dart';
import 'package:bai_tap_ui_login/widgets/home_page_widgets/item_shop_by_categories_list_view_widget.dart';
import 'package:bai_tap_ui_login/widgets/login_onboarding_widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

import 'hoodies_product_screen.dart';

class ShopByCategoriesScreen extends StatelessWidget {
  const ShopByCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Column(
                children: [
                  const SizedBox(
                    height: 66,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Shop by Categories',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  ItemShopByCategoriesListViewWidget(
                    items: [
                      ShopByCategoriesItem(
                        image: ImageManagementPng().avatarCategory1,
                        text: 'Hoodies',
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HoodiesProductScreen(),
                          ),
                        ),
                      ),
                      ShopByCategoriesItem(
                        image: ImageManagementPng().avatarCategory5,
                        text: 'Accessories',
                      ),
                      ShopByCategoriesItem(
                        image: ImageManagementPng().avatarCategory2,
                        text: 'Shorts',
                      ),
                      ShopByCategoriesItem(
                        image: ImageManagementPng().avatarCategory3,
                        text: 'Shoes',
                      ),
                      ShopByCategoriesItem(
                        image: ImageManagementPng().avatarCategory4,
                        text: 'Bag',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 24),
            child: BackButtonWidget(),
          )
        ],
      ),
    );
  }
}
