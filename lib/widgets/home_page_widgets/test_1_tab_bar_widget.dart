import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({
    required this.firstChoice,
    required this.secondChoice,
    required this.thirdChoice,
    required this.fourthChoice,
    super.key,
  });

  final String firstChoice;
  final String secondChoice;
  final String thirdChoice;
  final String fourthChoice;

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int selectedTab = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 0),
          buildTab(1, widget.firstChoice),
          buildTab(2, widget.secondChoice),
          buildTab(3, widget.thirdChoice),
          buildTab(4, widget.fourthChoice),
          const SizedBox(width: 0),
        ],
      ),
    );
  }

  Widget buildTab(int tabIndex, String choice) {
    final isSelected = selectedTab == tabIndex;
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedTab = tabIndex;
        });
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor:
            isSelected ? const Color(0xFF9747FF) : const Color(0xFFF4F4F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide.none,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: SvgPicture.asset(
          choice,
          width: 24,
          height: 24,
          // ignore: deprecated_member_use
          color: isSelected ? Colors.white : Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
