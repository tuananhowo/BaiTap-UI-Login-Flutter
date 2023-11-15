import 'package:bai_tap_ui_login/import_assets/assets.dart';
import 'package:flutter/material.dart';

class ItemImageProduct {
  final String image;

  ItemImageProduct({required this.image});
}

enum Clothes { product1, product2, product3, product4, product5 }

class ListViewImageIllustrationProductWidget extends StatelessWidget {
  const ListViewImageIllustrationProductWidget(
      {required this.items, super.key});

  final List<ItemImageProduct> items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 14,
        ),
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return SizedBox(
            width: 161,
            height: 248,
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

List<ItemImageProduct> product1 = [
  ItemImageProduct(image: ImageManagementPng.itemProductImage11),
  ItemImageProduct(image: ImageManagementPng.itemProductImage12),
  ItemImageProduct(image: ImageManagementPng.itemProductImage13),
];
