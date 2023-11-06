import 'package:flutter/material.dart';

import '../../widgets/back_button_widget.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/secondary_button_widget.dart';
import '../../widgets/text_input_widget.dart';
import 'forgot_password_screen.dart';

class PasswordSignInScreen extends StatelessWidget {
  const PasswordSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              BackButtonWidget(),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 32),
              TextInputWidget(hintText: 'Password'),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: ButtonWidget(
                  text: 'Continue',
                ),
              ),
              SecondaryButtonWidget(
                text: 'Forgot Password ?',
                textButton: 'Reset',
                destination: ForgotPasswordScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
