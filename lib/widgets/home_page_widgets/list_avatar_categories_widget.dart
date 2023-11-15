import 'package:flutter/material.dart';

import '../../views/home_page_views/hoodies_product_screen.dart';

class CategoryItem {
  final String text;
  final String image;

  CategoryItem({required this.text, required this.image});
}

class ListAvatarCategoriesWidget extends StatelessWidget {
  const ListAvatarCategoriesWidget({required this.items, super.key});

  final List<CategoryItem> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 14,
        ),
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HoodiesProductScreen(
                    item: item,
                  ),
                ),
              );
            },
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    item.image,
                    width: 56,
                    height: 56,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 19,
                  child: Center(
                    child: Text(
                      item.text,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
