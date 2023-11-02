import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              flex: 17,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: const Column(
                  children: [
                    TitleWidget('Tell us About yourself'),
                    TextQuestionWidget('Who do you shop for?'),
                    SingleSmallButton('Man', 'Woman'),
                    TextQuestionWidget('How Old are you?'),
                    DropdowButtonWidget(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                color: const Color(0xFFF4F4F4),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonWidget(),
                    HomeIndicatorWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 120, bottom: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class TextQuestionWidget extends StatelessWidget {
  const TextQuestionWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ));
  }
}

class SingleSmallButton extends StatefulWidget {
  const SingleSmallButton(this.nameButton1, this.nameButton2, {super.key});

  final String nameButton1;
  final String nameButton2;

  @override
  State<SingleSmallButton> createState() => _SingleSmallButtonState();
}

class _SingleSmallButtonState extends State<SingleSmallButton> {
  Color buttonColor1 = const Color(0xFF9747FF);
  Color buttonColor2 = const Color(0xFFF4F4F4);

  Color textButtonColor1 = Colors.white;
  Color textButtonColor2 = Colors.black;

  void toggleColors1() {
    setState(() {
      if (buttonColor1 != const Color(0xFF9747FF)) {
        buttonColor2 = const Color(0xFFF4F4F4);
        textButtonColor2 = Colors.black;
        buttonColor1 = const Color(0xFF9747FF);
        textButtonColor1 = Colors.white;
      }
    });
  }

  void toggleColors2() {
    setState(() {
      if (buttonColor2 != const Color(0xFF9747FF)) {
        buttonColor1 = const Color(0xFFF4F4F4);
        textButtonColor1 = Colors.black;
        buttonColor2 = const Color(0xFF9747FF);
        textButtonColor2 = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            toggleColors1();
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size(widthScreen * 0.45, 50),
              foregroundColor: textButtonColor1,
              backgroundColor: buttonColor1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide.none)),
          child: Text(widget.nameButton1),
        ),
        ElevatedButton(
          onPressed: () {
            toggleColors2();
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size(widthScreen * 0.45, 50),
              foregroundColor: textButtonColor2,
              backgroundColor: buttonColor2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide.none)),
          child: Text(widget.nameButton2),
        ),
      ],
    );
  }
}

class DropdowButtonWidget extends StatefulWidget {
  const DropdowButtonWidget({super.key});

  @override
  State<DropdowButtonWidget> createState() => _DropdowButtonWidgetState();
}

class _DropdowButtonWidgetState extends State<DropdowButtonWidget> {
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
        hint: const Text('Age range'),
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

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var widthHeight = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widthHeight, 50),
          backgroundColor: const Color(0xFF9747FF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100), side: BorderSide.none),
        ),
        child: const Text('Finish'),
      ),
    );
  }
}

class HomeIndicatorWidget extends StatelessWidget {
  const HomeIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 100,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(100)),
        ));
  }
}
