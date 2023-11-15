import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:bai_tap_ui_login/theme/styles.dart';
import 'package:bai_tap_ui_login/widgets/product_page_widgets/add_to_bag_button_widget.dart';
import 'package:bai_tap_ui_login/widgets/product_page_widgets/heart_icon_button_widget.dart';
import 'package:bai_tap_ui_login/widgets/login_onboarding_widgets/back_button_widget.dart';
import 'package:bai_tap_ui_login/widgets/product_page_widgets/list_view_image_illustration_product_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/product_page_widgets/choose_color_with_bottom_sheet_widget.dart';
import '../../widgets/product_page_widgets/choose_size_with_bottom_sheet_widget.dart';
import '../../widgets/product_page_widgets/user_reviews_widget.dart';

class ProductPageScreen extends StatelessWidget {
  const ProductPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 74,
                  ),
                  ListViewImageIllustrationProductWidget(items: product1),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text('Men\'s Harrington Jacket',
                      style: TextStyleThemeData.fontSize16FontWeight700),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    '\$148',
                    style: TextStyle(
                      color: ColorThemeData.colorPurple,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  const ChooseSizeWithBottomSheetWidget(),
                  const SizedBox(
                    height: 12,
                  ),
                  const ChooseColorWithBottomSheetWidget(),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                      'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                      style: TextStyleThemeData.fontSize12WithOpacity05),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text('Shipping & Returns',
                      style: TextStyleThemeData.fontSize16FontWeight700),
                  const SizedBox(
                    height: 12,
                  ),
                  Text('Free standard shipping and free 60-day returns',
                      style: TextStyleThemeData.fontSize12WithOpacity05),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Reviews',
                    style: TextStyleThemeData.fontSize16FontWeight700,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      '4.5 Ratings',
                      style: TextStyleThemeData.fontSize24FontWeight700,
                    ),
                  ),
                  Text(
                    '213 Reviews',
                    style: TextStyleThemeData.fontSize12WithOpacity05,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  UserReviewsWidget(
                    items: reviewsProduct,
                  ),
                  const SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonWidget(),
                  HeartIconButtonWidget(),
                ],
              ),
            ),
            const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.only(top: 14, bottom: 16),
                  child: AddToBagButtonWidget(),
                ))
          ],
        ),
      ),
    );
  }
}
