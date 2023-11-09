import 'package:bai_tap_ui_login/import_assets/image_management_png.dart';
import 'package:bai_tap_ui_login/widgets/login_onboarding_widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_page_widgets/product_cart_grid_view_widget.dart';

class HoodiesProductScreen extends StatelessWidget {
  const HoodiesProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
              // ignore: prefer_const_constructors
              child: Column(
                children: [
                  const SizedBox(
                    height: 66,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hoodies (240)',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ProductCartGridViewWidget(
                    items: [
                      ProductItemGridView(
                          image: ImageManagementPng().productImage7,
                          nameProduct: 'Men\'s Fleece Pullover Hoodie',
                          price: 100.00),
                      ProductItemGridView(
                          image: ImageManagementPng().productImage8,
                          nameProduct: 'Fleece Pullover Skate Hoodie',
                          price: 150.97),
                      ProductItemGridView(
                          image: ImageManagementPng().productImage9,
                          nameProduct: 'Fleece Skate Hoodie',
                          price: 110.00),
                      ProductItemGridView(
                          image: ImageManagementPng().productImage10,
                          nameProduct: 'Men\'s Ice-Dye Pullover Hoodie',
                          price: 128.97),
                      ProductItemGridView(
                          image: ImageManagementPng().productImage11,
                          nameProduct: 'Men\'s Harrington Jacket',
                          price: 148.00),
                      ProductItemGridView(
                          image: ImageManagementPng().productImage12,
                          nameProduct: 'Men\'s Harrington Jacket',
                          price: 148.00),
                    ],
                  ),
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
