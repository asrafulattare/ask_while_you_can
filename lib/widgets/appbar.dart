import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("asstes/logo.png").wh(100, 100),
        Button(
          textColor: const Color(0xff4f7c87),
          title: const Text("Record their answer"),
          isTrue: false,
          iconData: Icons.back_hand,
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final Text title;
  final IconData? iconData;
  final Color? primaryColor;
  final Color? textColor;
  bool? isTrue;

  Button({
    Key? key,
    required this.title,
    this.iconData,
    this.primaryColor,
    this.textColor,
    this.isTrue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // color: Colors.blue,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff4f7c87),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 7.0, bottom: 7.0, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isTrue == true
                  ? Icon(
                      iconData,
                      color: textColor,
                      size: 18,
                    )
                  : Container(),
              const WidthBox(3),
              title.text.color(textColor).bold.make(),
            ],
          ),
        ),
      ),
    ).backgroundColor(primaryColor).cornerRadius(10);
  }
}
