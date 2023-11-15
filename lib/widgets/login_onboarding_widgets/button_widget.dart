import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({required this.text, this.destination, super.key});

  final String text;
  final Widget? destination;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (destination != null) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => destination!),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorThemeData.colorPurple,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), side: BorderSide.none),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
