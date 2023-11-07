import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/home_page_widgets/tab_bar_widget.dart';
import '../../widgets/home_page_widgets/dropdown_gender_button_widget.dart';
import '../../widgets/home_page_widgets/product_cart_widget.dart';
import 'shop_by_categories_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TabBarWidget(
        firstChoice: 'assets/images/icon_images/home_icon1.svg',
        secondChoice: 'assets/images/icon_images/notificationbing_icon1.svg',
        thirdChoice: 'assets/images/icon_images/receipt_icon1.svg',
        fourthChoice: 'assets/images/icon_images/profile_icon1.svg',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/product_images/AvatarProduct1.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const DropdownGenderButtonWidget(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFF9747FF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/images/icon_images/bag_icon1.svg',
                        width: 16,
                        height: 16,
                      ),
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  TextButtonCategoriWidget(
                    text: 'See All',
                    destination: ShopByCategoriesScreen(),
                  )
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemAvatarCategoriesWidget(
                    image: 'assets/images/product_images/avatar_categori_1.png',
                    text: 'Hoddies',
                  ),
                  ItemAvatarCategoriesWidget(
                    image: 'assets/images/product_images/avatar_categori_2.png',
                    text: 'Shorts',
                  ),
                  ItemAvatarCategoriesWidget(
                    image: 'assets/images/product_images/avatar_categori_3.png',
                    text: 'Shoes',
                  ),
                  ItemAvatarCategoriesWidget(
                    image: 'assets/images/product_images/avatar_categori_4.png',
                    text: 'Bag',
                  ),
                  ItemAvatarCategoriesWidget(
                    image: 'assets/images/product_images/avatar_categori_5.png',
                    text: 'Accessories',
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Selling',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  TextButtonCategoriWidget(
                    text: 'See All',
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCartWidget(
                      image: 'assets/images/product_images/image_product_1.png',
                      nameProduct: 'Men\'s Harrington Jacket',
                      price: 148.00,
                    ),
                    SizedBox(width: 12),
                    ProductCartWidget(
                      image: 'assets/images/product_images/image_product_2.png',
                      nameProduct: 'Max Cirro Men\'s Slides',
                      price: 55.00,
                    ),
                    SizedBox(width: 12),
                    ProductCartWidget(
                      image: 'assets/images/product_images/image_product_3.png',
                      nameProduct: 'Men\'s Coaches Jacket',
                      price: 66.97,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New In',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xFF9747FF)),
                  ),
                  TextButtonCategoriWidget(text: 'See All')
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCartWidget(
                      image: 'assets/images/product_images/image_product_4.png',
                      nameProduct: 'Men\'s Harrington Jacket',
                      price: 148.00,
                    ),
                    SizedBox(width: 12),
                    ProductCartWidget(
                      image: 'assets/images/product_images/image_product_5.png',
                      nameProduct: 'Max Cirro Men\'s Slides',
                      price: 55.00,
                    ),
                    SizedBox(width: 12),
                    ProductCartWidget(
                      image: 'assets/images/product_images/image_product_6.png',
                      nameProduct: 'Men\'s Coaches Jacket',
                      price: 66.97,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemAvatarCategoriesWidget extends StatelessWidget {
  const ItemAvatarCategoriesWidget(
      {required this.image, required this.text, super.key});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            image,
            width: 56,
            height: 56,
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}

class TextButtonCategoriWidget extends StatelessWidget {
  const TextButtonCategoriWidget(
      {this.destination, required this.text, super.key});

  final Widget? destination;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (destination != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination!),
          );
        }
      },
      child: Text(text),
    );
  }
}
