import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';

class TextButtonCategoriesWidget extends StatelessWidget {
  const TextButtonCategoriesWidget(
      {this.destination, required this.text, super.key});

  final Widget? destination;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (destination != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination!),
          );
        }
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: ColorThemeData.colorBlack),
      ),
    );
  }
}
