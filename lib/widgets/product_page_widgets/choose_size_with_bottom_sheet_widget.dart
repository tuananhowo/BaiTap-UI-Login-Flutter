// ignore_for_file: constant_identifier_names

import 'package:bai_tap_ui_login/import_assets/assets.dart';
import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:bai_tap_ui_login/theme/styles.dart';
// import 'package:bai_tap_ui_login/views/product_page_views/product_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class ValueSelected {
//   static String selectedSize = 'S';
// }

enum ItemSize { S, M, L, XL }

class ChooseSizeWithBottomSheetWidget extends StatefulWidget {
  const ChooseSizeWithBottomSheetWidget({super.key});

  @override
  State<ChooseSizeWithBottomSheetWidget> createState() =>
      _ChooseSizeWithBottomSheetWidgetState();
}

class _ChooseSizeWithBottomSheetWidgetState
    extends State<ChooseSizeWithBottomSheetWidget> {
  ItemSize itemSize = ItemSize.L;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ColorThemeData.colorGray,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          padding: const EdgeInsets.all(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Size',
            style: TextStyleThemeData.fontSize16FontWeight400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                itemSize.name,
                style: TextStyleThemeData.fontSize16FontWeight700,
              ),
              const SizedBox(
                width: 29,
              ),
              SvgPicture.asset(
                IconManagementSvg.arrowDownIcon,
                width: 24,
                height: 24,
              )
            ],
          ),
        ],
      ),
      onPressed: () {
        Scaffold.of(context)
            .showBottomSheet<void>(
              (BuildContext context) {
                return Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: ColorThemeData.colorWhite,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 14, left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            const Text(
                              'Size',
                              style: TextStyleThemeData.fontSize24FontWeight700,
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                IconManagementSvg.closeIcon,
                                width: 24,
                                height: 24,
                                // ignore: deprecated_member_use
                                color: ColorThemeData.colorBlack,
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ListViewChoice(
                          sizeSelected: itemSize,
                          onDone: (item) {
                            setState(() {
                              itemSize = item;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            )
            .closed
            .then((value) {
              setState(() {});
            });
        //setState to reload selectedSize in display
      },
    );
  }
}

// class ItemListViewProperties {
//   final String nameProperties;
//   final Color? color;

//   ItemListViewProperties({required this.nameProperties, this.color});
// }

class ListViewChoice extends StatefulWidget {
  final ItemSize sizeSelected;
  final Function(ItemSize)? onDone;
  // final Widget renderItem;
  const ListViewChoice({super.key, required this.sizeSelected, this.onDone});

  @override
  State<ListViewChoice> createState() => _ListViewChoiceState();
}

class _ListViewChoiceState extends State<ListViewChoice> {
  late ItemSize sizeSelect;

  @override
  void initState() {
    sizeSelect = widget.sizeSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            final item = ItemSize.values[index];

            return GestureDetector(
              onTap: () {
                setState(() {
                  sizeSelect = item;
                });
                Navigator.pop(context);
                widget.onDone?.call(item);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorThemeData.colorGray),
                padding: const EdgeInsets.only(
                    top: 18, bottom: 18, left: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.name,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        if (item == sizeSelect)
                          SvgPicture.asset(
                            IconManagementSvg.checkIcon,
                            width: 24,
                            height: 24,
                            // ignore: deprecated_member_use
                            color: ColorThemeData.colorPurple,
                          )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
          itemCount: ItemSize.values.length),
    );
  }
}

// List<ItemListViewProperties> sizeChoose = [
//   ItemListViewProperties(nameProperties: 'S'),
//   ItemListViewProperties(nameProperties: 'M'),
//   ItemListViewProperties(nameProperties: 'L'),
//   ItemListViewProperties(nameProperties: 'XL'),
//   ItemListViewProperties(nameProperties: '2XL'),
// ];
