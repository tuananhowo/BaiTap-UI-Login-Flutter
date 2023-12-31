import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:bai_tap_ui_login/views/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/login_onboarding_widgets/button_widget.dart';
import '../../widgets/login_onboarding_widgets/dropdown_button_widget.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Column(
                          children: [
                            SizedBox(height: 108),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Tell us About yourself',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 51),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Who do you shop for ?',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            SingleSmallButton(
                                firstChoice: 'Man', secondChoice: 'Woman'),
                            SizedBox(height: 58),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'How Old are you ?',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            DropdownButtonWidget(),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 14, left: 24, right: 24, bottom: 16),
                      color: ColorThemeData.colorGray,
                      child: const ButtonWidget(
                          text: 'Finish',
                          destination: BottomNavigationBarWidget()),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SingleSmallButton extends StatefulWidget {
  const SingleSmallButton(
      {required this.firstChoice, required this.secondChoice, super.key});

  final String firstChoice;
  final String secondChoice;

  @override
  State<SingleSmallButton> createState() => _SingleSmallButtonState();
}

class _SingleSmallButtonState extends State<SingleSmallButton> {
  bool isMan = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              if (!isMan) {
                setState(() {
                  isMan = true;
                });
              }
            },
            style: ElevatedButton.styleFrom(
                foregroundColor: isMan
                    ? ColorThemeData.colorWhite
                    : ColorThemeData.colorBlack,
                backgroundColor: isMan
                    ? ColorThemeData.colorPurple
                    : ColorThemeData.colorGray,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide.none)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(widget.firstChoice),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              if (isMan) {
                setState(() {
                  isMan = false;
                });
              }
            },
            style: ElevatedButton.styleFrom(
                foregroundColor: isMan
                    ? ColorThemeData.colorBlack
                    : ColorThemeData.colorWhite,
                backgroundColor: isMan
                    ? ColorThemeData.colorGray
                    : ColorThemeData.colorPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide.none)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(widget.secondChoice),
            ),
          ),
        ),
      ],
    );
  }
}
