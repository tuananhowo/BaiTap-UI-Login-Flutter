import 'package:flutter/material.dart';

class CategoryItem {
  final String text;
  final String image;
  final void Function()? onPress;

  CategoryItem({required this.text, required this.image, this.onPress});
}

class ItemAvatarCategoriesWidget extends StatelessWidget {
  const ItemAvatarCategoriesWidget({required this.items, super.key});

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
            onTap: item.onPress,
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
