import 'package:chat_app_flutter/authentication/login_page/login_page.dart';
import 'package:chat_app_flutter/components/custom_button.dart';
import 'package:chat_app_flutter/components/custom_text_button.dart';
import 'package:chat_app_flutter/getting_started_page/widgets/bottom_section.dart';
import 'package:chat_app_flutter/getting_started_page/widgets/slider_items.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:chat_app_flutter/utils/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  int _current = 0;
  List<Widget> list = [
    const SliderItems(img: "screen1.png"),
    const SliderItems(img: "screen2.png"),
    const SliderItems(img: "screen3.png"),
  ];
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: size.height * 0.6,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _current = index;
                      },
                    );
                  },
                ),
                carouselController: buttonCarouselController,
                items: list.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: size.width * 0.65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [i],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () =>
                      buttonCarouselController.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(
                        _current == entry.key ? 0.9 : 0.4,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            BottomSection(
              onNextTap: () {
                buttonCarouselController.nextPage();
              },
              onSkipTap: () {
                utilFunction.pushRemoveRoute(
                  context,
                  const LoginPage(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
