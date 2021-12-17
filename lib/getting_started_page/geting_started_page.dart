import 'package:chat_app_flutter/components/custom_button.dart';
import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/utils/app_colors.dart';
import 'package:chat_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                Image.asset(
                  Constants.imageAssets("bottom.png"),
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  bottom: 50,
                  child: Row(
                    children: [
                      CustomButton(
                        ontap: () {},
                        text: "Next",
                        width: 120,
                        height: 50,
                        color: kwhite,
                        fontSize: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
