import 'package:bai_tap_ui_login/import_assets/assets.dart';
import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:bai_tap_ui_login/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ValueSelected {
  static String selectedSize = 'S';
  static Color selectedColor = Colors.grey;
}

class ChooseColorWithBottomSheetWidget extends StatefulWidget {
  const ChooseColorWithBottomSheetWidget({super.key});

  @override
  State<ChooseColorWithBottomSheetWidget> createState() =>
      _ChooseColorWithBottomSheetWidgetState();
}

class _ChooseColorWithBottomSheetWidgetState
    extends State<ChooseColorWithBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: ColorThemeData.colorGray,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: const EdgeInsets.all(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Color',
              style: TextStyleThemeData.fontSize16FontWeight400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  // color: item.color
                  decoration: BoxDecoration(
                    color: ValueSelected.selectedColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
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
                    height: 377,
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
                                'Color',
                                style:
                                    TextStyleThemeData.fontSize24FontWeight700,
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
                            items: colorChoose,
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
      ),
    );
  }
}

class ItemListViewProperties {
  final String nameProperties;
  final Color? color;

  ItemListViewProperties({required this.nameProperties, this.color});
}

class ListViewChoice extends StatefulWidget {
  final List<ItemListViewProperties> items;
  const ListViewChoice({super.key, required this.items});

  @override
  State<ListViewChoice> createState() => _ListViewChoiceState();
}

class _ListViewChoiceState extends State<ListViewChoice> {
  bool selectedActive = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            final item = widget.items[index];
            return GestureDetector(
              onTap: () {
                ValueSelected.selectedColor = item.color!;
                selectedActive = true;
                Navigator.pop(context);
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
                      item.nameProperties,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          // color: item.color
                          decoration: BoxDecoration(
                            color: item.color,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        SvgPicture.asset(
                          IconManagementSvg.checkIcon,
                          width: 24,
                          height: 24,
                          // ignore: deprecated_member_use
                          color: ColorThemeData.colorGray,
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
          itemCount: widget.items.length),
    );
  }
}

List<ItemListViewProperties> colorChoose = [
  ItemListViewProperties(nameProperties: 'Orange', color: Colors.orange),
  ItemListViewProperties(nameProperties: 'Black', color: Colors.black),
  ItemListViewProperties(nameProperties: 'Red', color: Colors.red),
  ItemListViewProperties(nameProperties: 'Yellow', color: Colors.yellow),
  ItemListViewProperties(nameProperties: 'Blue', color: Colors.blue),
];
