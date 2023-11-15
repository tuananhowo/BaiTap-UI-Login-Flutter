import 'package:flutter/material.dart';

import '../../widgets/login_onboarding_widgets/back_button_widget.dart';
import '../../widgets/login_onboarding_widgets/button_widget.dart';
import '../../widgets/login_onboarding_widgets/text_input_widget.dart';

import 'sent_email_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 32),
              TextInputWidget(hintText: 'Enter Email address'),
              SizedBox(height: 24),
              ButtonWidget(text: 'Continue', destination: SentEmailScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
