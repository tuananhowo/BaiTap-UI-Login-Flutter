// ignore_for_file: deprecated_member_use

import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:bai_tap_ui_login/views/home_page_views/home_page_screen.dart';
import 'package:bai_tap_ui_login/views/notifications_views/notifications_screen.dart';
import 'package:bai_tap_ui_login/views/orders_views/orders_screen.dart';
import 'package:bai_tap_ui_login/views/settings_views/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../import_assets/assets.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: ColorThemeData.colorWhite,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: ColorThemeData.colorWhite,
        elevation: 0,
        height: 80,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorThemeData.colorPurple),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  IconManagementSvg.homeIcon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            icon: SvgPicture.asset(IconManagementSvg.homeIcon,
                color: ColorThemeData.colorBlack.withOpacity(0.5)),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorThemeData.colorPurple),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  IconManagementSvg.notificationbingIcon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            icon: SvgPicture.asset(IconManagementSvg.notificationbingIcon,
                color: ColorThemeData.colorBlack.withOpacity(0.5)),
            label: 'Notification',
          ),
          NavigationDestination(
            selectedIcon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorThemeData.colorPurple),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  IconManagementSvg.receiptIcon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            icon: SvgPicture.asset(IconManagementSvg.receiptIcon,
                color: ColorThemeData.colorBlack.withOpacity(0.5)),
            label: 'Order',
          ),
          NavigationDestination(
            selectedIcon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorThemeData.colorPurple),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  IconManagementSvg.profileIcon,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            icon: SvgPicture.asset(IconManagementSvg.profileIcon,
                color: ColorThemeData.colorBlack.withOpacity(0.5)),
            label: 'Setting',
          ),
        ],
      ),
      body: <Widget>[
        const HomePageScreen(),
        const NotificationsScreen(),
        const OrdersScreen(),
        const SettingsScreen(),
      ][currentPageIndex],
    );
  }
}
