import 'package:bai_tap_ui_login/widgets/login_onboarding_widgets/back_button_widget.dart';
import 'package:flutter/material.dart';

import 'hoodies_product_screen.dart';

class ShopByCategoriesScreen extends StatelessWidget {
  const ShopByCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
          child: Column(
            children: [
              const BackButtonWidget(),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Shop by Categories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              ItemShopByCategoriesWidget(
                image: 'assets/images/product_images/avatar_categori_1.png',
                text: 'Hoodies',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HoddiesProductScreen()));
                },
              ),
              const SizedBox(
                height: 8,
              ),
              const ItemShopByCategoriesWidget(
                image: 'assets/images/product_images/avatar_categori_2.png',
                text: 'Accessories',
              ),
              const SizedBox(
                height: 8,
              ),
              const ItemShopByCategoriesWidget(
                image: 'assets/images/product_images/avatar_categori_3.png',
                text: 'Shorts',
              ),
              const SizedBox(
                height: 8,
              ),
              const ItemShopByCategoriesWidget(
                image: 'assets/images/product_images/avatar_categori_4.png',
                text: 'Shoes',
              ),
              const SizedBox(
                height: 8,
              ),
              const ItemShopByCategoriesWidget(
                image: 'assets/images/product_images/avatar_categori_5.png',
                text: 'Bags',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemShopByCategoriesWidget extends StatelessWidget {
  const ItemShopByCategoriesWidget(
      {required this.image, required this.text, this.onPress, super.key});

  final String image;
  final String text;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                text,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
