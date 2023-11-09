import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../import_assets/icon_management_svg.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: 'Search',
        hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        prefixIconConstraints:
            const BoxConstraints(maxHeight: 16, maxWidth: 48),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 19, right: 12),
          child: SvgPicture.asset(
            IconManagementSvg().searchIcon,
            width: 16,
            height: 16,
          ),
        ),
        // contentPadding: EdgeInsets.only(left: 19),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none),
        fillColor: const Color(0xFFF4F4F4),
      ),
    );
  }
}
