import 'package:bai_tap_ui_login/widgets/login_onboarding_widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/home_page_widgets/product_cart_widget.dart';

class HoddiesProductScreen extends StatelessWidget {
  const HoddiesProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 24, right: 24),
          child: Column(
            children: [
              BackButtonWidget(),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hoodies (240)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCartWidget(
                    image: 'assets/images/product_images/image_product_7.png',
                    nameProduct: 'Men\'s Fleece Pullover Hoodie',
                    price: 100.00,
                  ),
                  ProductCartWidget(
                    image: 'assets/images/product_images/image_product_8.png',
                    nameProduct: 'Fleece Pullover Skate Hoodie',
                    price: 150.97,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCartWidget(
                    image: 'assets/images/product_images/image_product_9.png',
                    nameProduct: 'Fleece Skate Hoodie',
                    price: 110.00,
                  ),
                  ProductCartWidget(
                    image: 'assets/images/product_images/image_product_10.png',
                    nameProduct: 'Men\'s Ice-Dye Pullover Hoodie',
                    price: 128.97,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCartWidget(
                    image: 'assets/images/product_images/image_product_11.png',
                    nameProduct: 'Men\'s Harrington Jacket',
                    price: 148.00,
                  ),
                  ProductCartWidget(
                    image: 'assets/images/product_images/image_product_12.png',
                    nameProduct: 'Max Cirro Men\'s Slides',
                    price: 55.00,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
