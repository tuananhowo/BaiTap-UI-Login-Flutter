import 'package:flutter/material.dart';

import '../../widgets/login_onboarding_widgets/back_button_widget.dart';
import '../../widgets/login_onboarding_widgets/button_widget.dart';
import '../../widgets/login_onboarding_widgets/secondary_button_widget.dart';
import '../../widgets/login_onboarding_widgets/text_input_widget.dart';
import 'forgot_password_screen.dart';
import 'info_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
              Align(alignment: Alignment.centerLeft, child: BackButtonWidget()),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 32),
              TextInputWidget(hintText: 'Firstname'),
              SizedBox(height: 16),
              TextInputWidget(hintText: 'Lastname'),
              SizedBox(height: 16),
              TextInputWidget(hintText: 'Email Address'),
              SizedBox(height: 16),
              TextInputWidget(hintText: 'Password'),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 40),
                child:
                    ButtonWidget(text: 'Continue', destination: InfoScreen()),
              ),
              SecondaryButtonWidget(
                  text: 'Forgot Password ?',
                  textButton: 'Reset',
                  destination: ForgotPasswordScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
