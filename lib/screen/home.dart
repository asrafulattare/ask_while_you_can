import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const AppBarWidgets(),
              const HeightBox(100),
              "Grow closer to your loved ones \nby asking them this question."
                  .text
                  .color(const Color(0xff4f7c87))
                  .make(),
              const HeightBox(20),
              Container(
                color: Colors.white,
                height: heightScreen / 5,
                width: widthScreen / 0.6,
                child: "What was your favorite part of school? "
                    .text
                    .xl4
                    .color(const Color(0xff4f7c87))
                    .make()
                    .p12()
                    .centered(),
              ).cornerRadius(13),
              const HeightBox(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    primaryColor: const Color(0xff4f7c87),
                    textColor: Colors.white,
                    title: const Text("Copy this Questions"),
                    isTrue: true,
                    iconData: Icons.copy,
                  ),
                  Button(
                    textColor: const Color(0xff4f7c87),
                    title: const Text("Try another one"),
                    isTrue: true,
                    iconData: Icons.alt_route,
                  ),
                  // Button(),
                ],
              ).pOnly(left: 20, right: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: "Made with love by Flutter"
                      .text
                      .color(const Color(0xff4f7c87))
                      .make(),
                ),
              ).expand()
            ],
          ),
        ),
      ),
    );
  }
}
