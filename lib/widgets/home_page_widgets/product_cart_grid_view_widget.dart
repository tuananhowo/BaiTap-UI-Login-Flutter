import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../import_assets/assets.dart';

class ProductItemGridView {
  final String image;
  final String nameProduct;
  final double price;
  final double? cost;

  ProductItemGridView({
    required this.image,
    required this.nameProduct,
    required this.price,
    this.cost,
  });
}

class ProductCartGridViewWidget extends StatelessWidget {
  const ProductCartGridViewWidget({required this.items, super.key});

  final List<ProductItemGridView> items;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 140 / 272),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];

        return Container(
          decoration: BoxDecoration(
            color: ColorThemeData.colorGray,
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 159,
                    height: 220,
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: SvgPicture.asset(
                        IconManagementSvg.heartAddIcon,
                        width: 16,
                        height: 16,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 159,
                // height: 39,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 4, right: 4),
                  child: Text(
                    item.nameProduct,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, right: 4, bottom: 16),
                child: Row(
                  children: [
                    Text(
                      '\$ ${item.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        item.cost != null
                            ? '\$ ${item.cost!.toStringAsFixed(2)}'
                            : '',
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
