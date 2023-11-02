import 'package:flutter/material.dart';

import 'sent_email.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: const Column(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  children: [
                    BackButtonWidget(),
                    TitleWidget('Forgot Password'),
                    TextInputWidget('Enter Email Address'),
                    ButtonWidget(),
                  ],
                ),
              ),
              Expanded(flex: 1, child: HomeIndicatorWidget())
            ],
          ),
        ),
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: Align(
        alignment: Alignment.topLeft,
        child: Ink(
          decoration: const ShapeDecoration(
              shape: CircleBorder(), color: Color(0xFFF4F4F4)),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  const TextInputWidget(this.labelText, {super.key});
  final String labelText;

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          labelText: widget.labelText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          fillColor: const Color(0xFFF4F4F4),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var widthHeight = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SentEmailScreen(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthHeight, 50),
          backgroundColor: const Color(0xFF9747FF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100), side: BorderSide.none),
        ),
        child: const Text('Continue'),
      ),
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
