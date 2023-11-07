import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropdownGenderButtonWidget extends StatefulWidget {
  const DropdownGenderButtonWidget({super.key});

  @override
  State<DropdownGenderButtonWidget> createState() =>
      _DropdownGenderButtonWidgetState();
}

class _DropdownGenderButtonWidgetState
    extends State<DropdownGenderButtonWidget> {
  String selectedValue = 'Man';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xFFF4F4F4),
      ),
      child: DropdownButton<String>(
        icon: Padding(
          padding: const EdgeInsets.only(right: 14),
          child: SvgPicture.asset(
            'assets/images/icon_images/arrowdown2.svg',
            width: 16,
            height: 16,
          ),
        ),
        underline: Container(),
        borderRadius: BorderRadius.circular(10),
        // isExpanded: true,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: <String>['Man', 'Woman']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 14),
              child: Text(value),
            ),
          );
        }).toList(),
      ),
    );
  }
}
