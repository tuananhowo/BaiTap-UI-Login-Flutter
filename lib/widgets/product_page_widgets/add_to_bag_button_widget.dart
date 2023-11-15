import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';

class AddToBagButtonWidget extends StatelessWidget {
  const AddToBagButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorThemeData.colorPurple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$148',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Add to Bag',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            )
          ],
        ));
  }
}
