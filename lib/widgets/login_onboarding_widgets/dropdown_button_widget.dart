import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String? selectedValue;
  List<String> items = ['18', '19', '20', '21'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xFFF4F4F4)),
      child: DropdownButton<String>(
        value: selectedValue,
        hint: const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 16, left: 22, right: 22),
          child: Text('Age range'),
        ),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
        underline: Container(),
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        borderRadius: BorderRadius.circular(10),
        isExpanded: true,
      ),
    );
  }
}
