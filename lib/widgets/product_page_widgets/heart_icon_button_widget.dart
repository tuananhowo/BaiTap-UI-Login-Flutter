import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../import_assets/assets.dart';
import '../../theme/color.dart';

class HeartIconButtonWidget extends StatelessWidget {
  const HeartIconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: ColorThemeData.colorGray,
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          IconManagementSvg.heartAddIcon,
          width: 16,
          height: 16,
        ),
      ),
    );
  }
}
