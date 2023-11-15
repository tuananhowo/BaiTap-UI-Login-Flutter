import 'package:bai_tap_ui_login/import_assets/assets.dart';
import 'package:bai_tap_ui_login/theme/styles.dart';
import 'package:flutter/material.dart';

class ItemUserReviews {
  final String image;
  final String nameUser;
  final String reviews;
  final String recentReviews;
  ItemUserReviews(
      {required this.image,
      required this.nameUser,
      required this.reviews,
      required this.recentReviews});
}

class UserReviewsWidget extends StatelessWidget {
  final List<ItemUserReviews> items;
  const UserReviewsWidget({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        item.image,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Text(
                    item.nameUser,
                    style: TextStyleThemeData.fontSize12FontWeight700,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 4),
                child: Text(
                  item.reviews,
                  style: TextStyleThemeData.fontSize12WithOpacity05,
                ),
              ),
              Text(
                item.recentReviews,
                style: TextStyleThemeData.fontSize12FontWeight400,
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 14,
        ),
      ),
    );
  }
}

List<ItemUserReviews> reviewsProduct = [
  ItemUserReviews(
      image: ImageManagementPng.avatarUser1,
      nameUser: 'Alex Morgan',
      reviews:
          'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
      recentReviews: '12days ago'),
  ItemUserReviews(
      image: ImageManagementPng.avatarUser2,
      nameUser: 'Alex Morgan',
      reviews:
          'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
      recentReviews: '12days ago')
];
