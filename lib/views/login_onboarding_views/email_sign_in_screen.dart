import 'package:bai_tap_ui_login/import_assets/icon_management_svg.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/login_onboarding_widgets/text_input_widget.dart';
import '../../widgets/login_onboarding_widgets/button_widget.dart';
import '../../widgets/login_onboarding_widgets/secondary_button_widget.dart';

import 'create_account_screen.dart';
import 'password_sign_in_screen.dart';

class EmailSignInScreen extends StatelessWidget {
  const EmailSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 70),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const TextInputWidget(hintText: 'Email Address'),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: ButtonWidget(
                  text: 'Continue',
                  destination: PasswordSignInScreen(),
                ),
              ),
              const SecondaryButtonWidget(
                text: 'Don\'t have an Account ?',
                textButton: 'Create One',
                destination: CreateAccountScreen(),
              ),
              const SizedBox(height: 72),
              SignUpMethodsWidget(
                  image: IconManagementSvg().appleIcon, loginProvider: 'Apple'),
              const SizedBox(height: 12),
              SignUpMethodsWidget(
                  image: IconManagementSvg().googleIcon,
                  loginProvider: 'Google'),
              const SizedBox(height: 12),
              SignUpMethodsWidget(
                  image: IconManagementSvg().facebookIcon,
                  loginProvider: 'Facebook'),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpMethodsWidget extends StatelessWidget {
  const SignUpMethodsWidget(
      {required this.image, required this.loginProvider, super.key});

  final String image;
  final String loginProvider;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0xFFF4F4F4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100), side: BorderSide.none)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 19.5, right: 19.5),
              child: SvgPicture.asset(
                image,
                width: 25,
                height: 25,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Continue With $loginProvider',
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );
  }
}
