import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../import_assets/assets.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: ColorThemeData.colorGray,
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: SvgPicture.asset(
          IconManagementSvg.backIcon,
          width: 16,
          height: 16,
        ),
      ),
    );
  }
}
