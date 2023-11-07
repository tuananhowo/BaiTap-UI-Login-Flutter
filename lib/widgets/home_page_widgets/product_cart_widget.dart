import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget(
      {required this.image,
      required this.nameProduct,
      required this.price,
      super.key});

  final String image;
  final String nameProduct;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
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
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 5,
                right: 8,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    'assets/images/icon_images/heart_add.svg',
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
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 4, right: 4),
              child: Text(
                nameProduct,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4, bottom: 16),
            child: Text(
              '\$ ${price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
