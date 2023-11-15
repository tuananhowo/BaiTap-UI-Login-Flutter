import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';

class ShopByCategoriesItem {
  final String image;
  final String text;
  final void Function()? onPress;

  ShopByCategoriesItem({required this.image, required this.text, this.onPress});
}

class ItemShopByCategoriesListViewWidget extends StatelessWidget {
  const ItemShopByCategoriesListViewWidget({required this.items, super.key});

  final List<ShopByCategoriesItem> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(
          itemCount: items.length,
          separatorBuilder: (context, index) => const SizedBox(
                height: 8,
              ),
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];
            return GestureDetector(
              onTap: item.onPress,
              child: Container(
                decoration: BoxDecoration(
                    color: ColorThemeData.colorGray,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          item.image,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        item.text,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
