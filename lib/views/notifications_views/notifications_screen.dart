import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../import_assets/assets.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 54,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            'Notifications',
            style: TextStyle(
                height: 18.32,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorThemeData.colorBlack),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(children: [
            // const SizedBox(
            //   height: 200,
            // ),
            Stack(
              children: [
                SvgPicture.asset(
                  IconManagementSvg.notificationbingIcon1,
                  width: 100,
                  height: 100,
                ),
                Positioned(
                  left: -9,
                  child: SvgPicture.asset(
                    IconManagementSvg.notificationbingIcon2,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              width: double.infinity,
              child: const Text(
                'No Notification yet',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
