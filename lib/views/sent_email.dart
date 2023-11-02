import 'package:flutter/material.dart';

import 'login_screen.dart';

class SentEmailScreen extends StatelessWidget {
  const SentEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: const Column(children: [
          Expanded(
            flex: 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconMessage(),
                TextMessage(),
                SmallButton('Return to Login')
              ],
            ),
          ),
          Expanded(flex: 1, child: HomeIndicatorWidget())
        ]),
      )),
    );
  }
}

class IconMessage extends StatelessWidget {
  const IconMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.message,
      color: Color(0xFF9747FF),
      size: 80,
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: const Text(
        'We Sent you an Email to reset your password.',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  const SmallButton(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EmailSingInScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          minimumSize: Size(widthScreen / 3, 50),
          backgroundColor: const Color(0xFF9747FF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100), side: BorderSide.none)),
      child: Text(text),
    );
  }
}

class HomeIndicatorWidget extends StatelessWidget {
  const HomeIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 100,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(100)),
        ));
  }
}
