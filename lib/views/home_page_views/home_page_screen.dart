import 'package:bai_tap_ui_login/import_assets/icon_management_svg.dart';
import 'package:bai_tap_ui_login/import_assets/image_management_png.dart';
import 'package:bai_tap_ui_login/views/home_page_views/hoodies_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/home_page_widgets/dropdown_gender_button_widget.dart';
import '../../widgets/home_page_widgets/item_avatar_categories_widget.dart';
import '../../widgets/home_page_widgets/product_cart_list_view_widget.dart';
import '../../widgets/home_page_widgets/search_input_widget.dart';
import '../../widgets/home_page_widgets/text_button_categories_widget.dart';

import 'shop_by_categories_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  ImageManagementPng().avatarProduct1,
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
                    IconManagementSvg().bagIcon,
                    width: 16,
                    height: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 24),
                child: SearchInputWidget(),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  TextButtonCategoriesWidget(
                    text: 'See All',
                    destination: ShopByCategoriesScreen(),
                  )
                ],
              ),
              const SizedBox(height: 16),
              ItemAvatarCategoriesWidget(
                items: [
                  CategoryItem(
                    text: 'Hoddies',
                    image: ImageManagementPng().avatarCategory1,
                    onPress: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HoodiesProductScreen(),
                      ),
                    ),
                  ),
                  CategoryItem(
                      text: 'Shorts',
                      image: ImageManagementPng().avatarCategory2),
                  CategoryItem(
                      text: 'Shoes',
                      image: ImageManagementPng().avatarCategory3),
                  CategoryItem(
                      text: 'Bag', image: ImageManagementPng().avatarCategory4),
                  CategoryItem(
                      text: 'Accessories',
                      image: ImageManagementPng().avatarCategory5),
                  CategoryItem(
                      text: 'Hoddies',
                      image: ImageManagementPng().avatarCategory1),
                  CategoryItem(
                      text: 'Shorts',
                      image: ImageManagementPng().avatarCategory2),
                  CategoryItem(
                      text: 'Shoes',
                      image: ImageManagementPng().avatarCategory3),
                  CategoryItem(
                      text: 'Bag', image: ImageManagementPng().avatarCategory4),
                  CategoryItem(
                      text: 'Accessories',
                      image: ImageManagementPng().avatarCategory5),
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
                  TextButtonCategoriesWidget(
                    text: 'See All',
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ProductCartListViewWidget(
                items: [
                  ProductItem(
                      image: ImageManagementPng().productImage1,
                      nameProduct: 'Men\'s Harrington Jacket',
                      price: 148.00),
                  ProductItem(
                      image: ImageManagementPng().productImage2,
                      nameProduct: 'Max Cirro Men\'s Slides',
                      price: 55.00,
                      cost: 110.00),
                  ProductItem(
                      image: ImageManagementPng().productImage3,
                      nameProduct: 'Men\'s Coaches Jacket',
                      price: 66.97),
                ],
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
                  TextButtonCategoriesWidget(text: 'See All')
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ProductCartListViewWidget(
                items: [
                  ProductItem(
                      image: ImageManagementPng().productImage4,
                      nameProduct: 'Men\'s Harrington Jacket',
                      price: 148.00),
                  ProductItem(
                      image: ImageManagementPng().productImage5,
                      nameProduct: 'Max Cirro Men\'s Slides',
                      price: 55.00),
                  ProductItem(
                      image: ImageManagementPng().productImage6,
                      nameProduct: 'Men\'s Coaches Jacket',
                      price: 66.97),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
