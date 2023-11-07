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
                  builder: (contex) => destination,
                ),
              );
            },
            child: Text(
              textButton,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w900),
            ))
      ],
    );
  }
}
