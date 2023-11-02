import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'create_account.dart';
import 'password_sign_in.dart';

class EmailSingInScreen extends StatelessWidget {
  const EmailSingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Container(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 10),
          child: const Column(
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  children: [
                    TitleWidget('Sign in'),
                    TextInputWidget('Email Address'),
                    ButtonWidget(),
                    SecondaryButtonWidget(),
                    SignUpMethods(Icons.apple, 'Apple'),
                    SignUpMethods(Icons.linked_camera, 'Google'),
                    SignUpMethods(Icons.facebook, 'Facebook'),
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
    return TextField(
      decoration: InputDecoration(
        filled: true,
        labelText: widget.labelText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none),
        fillColor: const Color(0xFFF4F4F4),
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
              builder: (context) => const PasswordSignInScreen(),
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

class SecondaryButtonWidget extends StatelessWidget {
  const SecondaryButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 40),
      child: Row(
        children: [
          const Text('Don\'t have an Account?'),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => const CreateAccountScreen(),
                  ),
                );
              },
              child: const Text(
                'Create One',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
              ))
        ],
      ),
    );
  }
}

class SignUpMethods extends StatelessWidget {
  const SignUpMethods(this.icon, this.loginProvider, {super.key});

  final IconData icon;
  final String loginProvider;

  @override
  Widget build(BuildContext context) {
    var widthHeight = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            minimumSize: Size(widthHeight, 50),
            backgroundColor: const Color(0xFFF4F4F4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide.none)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            const SizedBox(width: 20),
            Text(
              'Continue With $loginProvider',
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
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
