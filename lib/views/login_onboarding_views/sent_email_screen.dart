import 'package:flutter/material.dart';

import '../../widgets/login_onboarding_widgets/button_widget.dart';
import 'email_sign_in_screen.dart';

class SentEmailScreen extends StatelessWidget {
  const SentEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Column(children: [
            SizedBox(height: 210),
            IconMessageSentEmail(),
            SizedBox(height: 24),
            TextMessageSentEmail(),
            SizedBox(height: 39),
            ButtonWidget(
              text: 'Return to Login',
              destination: EmailSignInScreen(),
            ),
          ]),
        ),
      ),
    );
  }
}

class IconMessageSentEmail extends StatelessWidget {
  const IconMessageSentEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/icon_images/messagetext2.png'),
        Positioned(
          left: -9,
          child: Image.asset('assets/images/icon_images/messagetext1.png'),
        ),
      ],
    );
  }
}

class TextMessageSentEmail extends StatelessWidget {
  const TextMessageSentEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: const Text(
        'We Sent you an Email to reset your password.',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
