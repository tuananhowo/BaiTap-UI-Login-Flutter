import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../import_assets/assets.dart';

class DropdownGenderButtonWidget extends StatefulWidget {
  const DropdownGenderButtonWidget({super.key});

  @override
  State<DropdownGenderButtonWidget> createState() =>
      _DropdownGenderButtonWidgetState();
}

class _DropdownGenderButtonWidgetState
    extends State<DropdownGenderButtonWidget> {
  List<String> listSelect = ['Men', 'Woman'];
  String selectedValue = 'Men';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      child: Material(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: ColorThemeData.colorGray,
          ),
          child: Row(
            children: [
              Text(selectedValue),
              const SizedBox(width: 4),
              SvgPicture.asset(
                IconManagementSvg.arrowDownIcon,
                width: 16,
                height: 16,
              )
            ],
          ),
        ),
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        ...listSelect.map(
          (e) => PopupMenuItem(
            onTap: () {
              setState(() {
                selectedValue = e;
              });
            },
            value: e,
            child: Text(e),
          ),
        )
      ],
    );
  }
}
