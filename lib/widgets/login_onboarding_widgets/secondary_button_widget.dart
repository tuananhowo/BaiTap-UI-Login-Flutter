import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatelessWidget {
  const SecondaryButtonWidget(
      {required this.text,
      required this.textButton,
      required this.destination,
      super.key});

  final String text;
  final String textButton;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => destination,
                ),
              );
            },
            child: Text(
              textButton,
              style: const TextStyle(
                  color: ColorThemeData.colorBlack,
                  fontWeight: FontWeight.w900),
            ))
      ],
    );
  }
}
