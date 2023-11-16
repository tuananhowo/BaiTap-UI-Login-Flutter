import 'package:bai_tap_ui_login/import_assets/assets.dart';
import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseQuantityProductWidget extends StatefulWidget {
  const ChooseQuantityProductWidget({super.key});

  @override
  State<ChooseQuantityProductWidget> createState() =>
      _ChooseQuantityProductWidgetState();
}

class _ChooseQuantityProductWidgetState
    extends State<ChooseQuantityProductWidget> {
  int selectedQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 25),
      decoration: BoxDecoration(
        color: ColorThemeData.colorGray,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text('Quantity'),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedQuantity++;
                  },
                );
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: ColorThemeData.colorPurple,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SvgPicture.asset(
                  IconManagementSvg.addQuantityIcon,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
            Container(
              width: 52,
              alignment: Alignment.center,
              child: Text(
                selectedQuantity.toString(),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (selectedQuantity > 1) {
                  setState(
                    () {
                      selectedQuantity--;
                    },
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: ColorThemeData.colorPurple,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SvgPicture.asset(
                  IconManagementSvg.minusQuantityIcon,
                  width: 16,
                  height: 16,
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
